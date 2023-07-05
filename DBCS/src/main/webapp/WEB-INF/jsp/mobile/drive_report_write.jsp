<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="head.jsp" %>

<div class="m_cont">
	<div class="m_drive_write write">
		<div class="top_area">
			<div class="top_tit">
				<p>운행일지 > <span>일지등록</span></p>
			</div>
		</div>
		<div class="body">
			<form name="car_detail" action="" method="">
				<input type="hidden" name="seq" value="">

				<div class="wrap">
					<p></p>
					<div class="ul_style">
						<ul>
							<li class="required">
								<p>차량번호<span class="ess"></span></p>
								<div class="sch_inp">
									<input type="hidden" name="ve_seq" class="iess" value="">
									<input type="text" name="ve_number" placeholder="검색하기" required="required" readonly>
									<a class="btn" data-dialog="car_sch">
										<i class="ri-search-line"></i>
									</a>
								</div>
							</li>
							<li class="required">
								<p>입력자<span class="ess"></span></p>
								<div class="sch_inp">
									<input type="hidden" name="per_seq" 
									value='<%= session.getAttribute("per_seq")%>' class="iess" />
									<input type="text" name="per_name" required="required"
									value='<%= session.getAttribute("per_name")%>' readonly/>
								</div>
							</li>
							<li class="required">
								<p>운행일자<span class="ess"></span></p>
								<div class="">
									<input type="date" name="rc_date" class="iess" required="required">
								</div>
							</li>
							<li>
								<p>주행거리</p>
								<div class="sch_inp">
									<input type="text" name="rc_drive" placeholder="자동입력" readonly>
								</div>
							</li>
							<li class="required">
								<p>운행전(km)<span class="ess"></span></p>
								<div class="sch_inp">
									<input type="text" name="rc_before" placeholder="차량번호 등록시 자동입력" class="iess" readonly>
								</div>
							</li>
							<li>
								<p>운행후(km)</p>
								<div class="sch_inp">
									<input type="text" name="rc_after" placeholder="자동입력" readonly>
								</div>
							</li>
							<li>
								<p>가동시간</p>
								<div class="sch_inp">
									<input type="text" name="rc_operate" placeholder="자동입력" readonly>
								</div>
							</li>
							<li>
								<p>경유지</p>
								<div class="sch_inp">
									<input type="text" name="rc_area" placeholder="자동입력" readonly>
								</div>
							</li>
							<li>
								<p>통행료</p>
								<div class="sch_inp">
									<input type="text" name="rc_pass" placeholder="자동입력" readonly>
								</div>
							</li>
							<li>
								<p>주차비</p>
								<div class="sch_inp">
									<input type="text" name="rc_park" placeholder="자동입력" readonly>
								</div>
							</li>
							<li>
								<p>주유리터</p>
								<div class="sch_inp">
									<input type="text" name="rc_refuel" placeholder="주유단가/주유금액 자동계산" readonly>
								</div>
							</li>
							<li>
								<p>주유금액</p>
								<div class="sch_inp">
									<input type="text" name="rc_amount" class="input_number" placeholder="입력하세요.">
								</div>
							</li>
							<li>
								<p>주유단가</p>
								<div class="sch_inp">
									<input type="text" name="rc_price" class="input_number" placeholder="입력하세요.">
								</div>
							</li>
							<li>
								<p>사고처리</p>
								<div>
									<select name="rc_handle">
										<option value="">선택</option>
										<option value="1">없음</option>
										<option value="2">현금</option>
										<option value="3">보험</option>
									</select>
								</div>
							</li>
							<li>
								<p>고장수리비</p>
								<div class="sch_inp">
									<input type="text" name="rc_trouble" class="input_number" placeholder="입력하세요.">
								</div>
							</li>
							<li>
								<p>고장부품</p>
								<div class="sch_inp">
									<input type="text" name="rc_part" class="input_number" placeholder="입력하세요.">
								</div>
							</li>
							<li class="img">
								<p>첨부파일1</p>
								<div class="input_file">
									<input type="file" name="upload[]" id="f_seq1" class="file_input">
									<label for="f_seq1"><i class="ri-upload-fill"></i></label>
									<p>File upload</p>
									<input type="hidden" name="f_seq[]" value="">
									<input type="hidden" name="f_del[]" value="1">
								</div>
							</li>
							<li class="img">
								<p>첨부파일2</p>
								<div class="input_file">
									<input type="file" name="upload[]" id="f_seq2" class="file_input">
									<label for="f_seq2"><i class="ri-upload-fill"></i></label>
									<p>File upload</p>
									<input type="hidden" name="f_seq[]" value="">
									<input type="hidden" name="f_del[]" value="1">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="wrap">
					<p class="left"></p>
					<a class="btn add_btn">+</a>
					<div class="tb">
						<div class="table table_btn">
							<table class="tb_1">
								<colgroup>
									<col width="35%">
									<col width="">
									<col width="30px">
								</colgroup>
								<tbody>
									<tr>
										<th>출발지</th>
										<td>
											<input type="text" name="rh_depart[]" placeholder="입력하세요.">
										</td>
										<td>
											<a class="del_btn">-</a>
										</td>
									</tr>
									<tr>
										<th>도착지</th>
										<td>
											<input type="text" name="rh_arrival[]" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>거리</th>
										<td>
											<input type="text" name="rh_distance[]" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>시간(분)</th>
										<td>
											<input type="text" name="rh_minute[]" class="input_number" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>통행료</th>
										<td>
											<input type="text" name="rh_pass[]" class="input_number" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>주차비</th>
										<td>
											<input type="text" name="rh_park[]" class="input_number" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>윤전자</th>
										<td>
											<input type="text" name="rh_driver[]" placeholder="입력하세요.">
										</td>
									</tr>
									<tr>
										<th>비고</th>
										<td>
											<input type="text" name="rh_note[]" placeholder="입력하세요.">
										</td>
									</tr>
									<!-- <tr tr_seq="1">
										<input type="hidden" name="rh_seq[]">
										<th>출발지</th>
										<td>
											<input type="text" name="rh_depart[]" placeholder="입력하세요.">
										</td>
										<th>도착지</th>
										<td>
											<input type="text" name="rh_arrival[]" placeholder="입력하세요.">
										</td>
										<th>거리</th>
										<td>
											<input type="text" name="rh_distance[]" placeholder="입력하세요.">
										</td>
										<th>시간(분)</th>
										<td>
											<input type="text" name="rh_minute[]" placeholder="입력하세요.">
										</td>
										<th>통행료</th>
										<td>
											<input type="text" name="rh_pass[]" placeholder="입력하세요.">
										</td>
										<th>주차비</th>
										<td>
											<input type="text" name="rh_park[]" placeholder="입력하세요.">
										</td>
										<th>윤전자</th>
										<td>
											<input type="text" name="rh_driver[]" placeholder="입력하세요.">
										</td>
										<th>비고</th>
										<td>
											<input type="text" name="rh_note[]" placeholder="입력하세요.">
										</td>
										<th class="tb_btn"><a class="btn del_btn">-</a></th>
									</tr> -->
									<!-- <tr>
										<th>출발지</th>
										<td>
											<input type="text" name="rh_depart[]" placeholder="자동입력" readonly>
										</td>
										<th>도착지</th>
										<td>
											<input type="text" name="rh_arrival[]" placeholder="입력하세요.">
										</td>
										<th>거리</th>
										<td>
											<input type="text" name="rh_distance[]" placeholder="입력하세요.">
										</td>
										<th>시간(분)</th>
										<td>
											<input type="text" name="rh_minute[]" placeholder="입력하세요.">
										</td>
										<th>통행료</th>
										<td>
											<input type="text" name="rh_pass[]" placeholder="입력하세요.">
										</td>
										<th>주차비</th>
										<td>
											<input type="text" name="rh_park[]" placeholder="입력하세요.">
										</td>
										<th>윤전자</th>
										<td>
											<input type="text" name="rh_driver[]" placeholder="입력하세요.">
										</td>
										<th>비고</th>
										<td>
											<input type="text" name="rh_note[]" placeholder="입력하세요.">
										</td>
										<th class="tb_btn"><a class="btn del_btn">-</a></th>
									</tr> -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="btn_area">
					<button class="btn save"><i class="ri-check-line"></i>저장</button>
					<a class="btn gray close" href="${contextPath}/drive_report"><i class="ri-close-line"></i>취소</a>
				</div>
			</form>
		</div>
	</div>
</div>

<script src="${resourcePath}/js/mobile/drive_report_write.js"></script>
<%@ include file="tail.jsp" %>