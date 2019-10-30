<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Helper extends MX_Controller
{

	private $data = false;
	private $lang = 'th';

	public function __construct()
	{
		parent::__construct();

		/*
		| -------------------------------------------------------------------------
		| MIDDLEWARE
		| -------------------------------------------------------------------------
		*/

		require_login('backoffice/login');

		/*
		| -------------------------------------------------------------------------
		| SET UTILITIES
		| -------------------------------------------------------------------------
		*/

		// Model
		$this->load->model('User_model');

		// Language
		$this->lang = $this->config->item('language_abbr');

		/*
		| -------------------------------------------------------------------------
		| HANDLE
		| -------------------------------------------------------------------------
		*/

		$this->data['user'] = $this->User_model->get_user_by_id($this->session->userdata('user_id'));
	}

	public function changeStatus()
	{
		$status = 500;
		$response['success'] = 0;

		switch ($this->input->post('table')) {
			case 'banner_pages':

				$this->load->model('Banner_model');

				$update_banner = $this->Banner_model->update_banner_by_id($this->input->post('id'), [
					'status' => $this->input->post('status'),
					'updated_at' => date('Y-m-d H:i:s')
				]);

				if ($update_banner) {

					$status = 200;
					$response['success'] = 1;

					logger_store([
						'user_id' => $this->data['user']->id,
						'detail' => 'แก้ไข Banner',
						'event' => 'update',
						'ip' => $this->input->ip_address()
					]);
				}
				break;

			default:
				;
		}

		// Send Response
		return $this->output
			->set_status_header($status)
			->set_content_type('application/json')
			->set_output(json_encode($response));
	}
}