class MembersController < ApplicationController
	
  def index
    @members = Member.where(group_id: params[:group_id])
    @group = Group.find_by(id: params[:group_id])
  end

  def new
    @member = Member.new
    @group = Group.find_by(id: params[:group_id])
  end

  def create
    @group = Group.find_by(id: params[:group_id])
    @member = Member.create(params[:member])
    @member.group = @group
    @member.save
    redirect_to group_path(@group)
  end

  def destroy
    @group = Group.find_by(id: params[:group_id])
    @member = Member.find_by_id(params[:id])
    @member.destroy
    redirect_to group_path(@group)
  end


end
