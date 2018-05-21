require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  context 'anonymous' do
    it 'kick from #show' do
      get 'show', id:1
      expect(response.status).not_to eq 200
      expect(response).redirect_to(new_user_session_path)
    end
  end
end
