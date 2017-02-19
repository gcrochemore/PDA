require 'test_helper'

class ResumeHasSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume_has_skill = resume_has_skills(:one)
  end

  test "should get index" do
    get resume_has_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_resume_has_skill_url
    assert_response :success
  end

  test "should create resume_has_skill" do
    assert_difference('ResumeHasSkill.count') do
      post resume_has_skills_url, params: { resume_has_skill: { level: @resume_has_skill.level, resume_id: @resume_has_skill.resume_id, skill_id: @resume_has_skill.skill_id } }
    end

    assert_redirected_to resume_has_skill_url(ResumeHasSkill.last)
  end

  test "should show resume_has_skill" do
    get resume_has_skill_url(@resume_has_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_resume_has_skill_url(@resume_has_skill)
    assert_response :success
  end

  test "should update resume_has_skill" do
    patch resume_has_skill_url(@resume_has_skill), params: { resume_has_skill: { level: @resume_has_skill.level, resume_id: @resume_has_skill.resume_id, skill_id: @resume_has_skill.skill_id } }
    assert_redirected_to resume_has_skill_url(@resume_has_skill)
  end

  test "should destroy resume_has_skill" do
    assert_difference('ResumeHasSkill.count', -1) do
      delete resume_has_skill_url(@resume_has_skill)
    end

    assert_redirected_to resume_has_skills_url
  end
end
