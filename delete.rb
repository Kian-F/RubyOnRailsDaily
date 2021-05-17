def destroy
  @digital_page = DigitalPage.find(params[:id])
  authorize @digital_page

  if @digital_page.destroy
    respond_to do |format|
      format.json { render json: { entity: { id: @digital_page.id } }, status: 200 }
    end
  else
    render_errors(@digital_page.errors.full_messages)
  end
end