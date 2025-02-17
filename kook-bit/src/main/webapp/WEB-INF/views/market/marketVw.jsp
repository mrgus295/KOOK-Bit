<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<jsp:include page="/WEB-INF/views/layout/include.jsp"/>
</head>

<body>
  <jsp:include page="/WEB-INF/views/layout/jsinclude.jsp"/>
  <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
  <jsp:include page="/WEB-INF/views/layout/side.jsp"/>
  
  <!-- 컨텐츠 시작 -->
  <main id="main" class="main">
    <div class="pagetitle">
      <h1>${title }</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">Market</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-BTC', 'Today');">Today</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-BTC', 'This Month');">This Month</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-BTC', 'This Year');">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">BitCoin <span id="BTC-type">| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6 id="BTC-price">&#x20a9;145</h6>
                      <span class="text-success small pt-1 fw-bold" id="BTC-rate"></span>
                      <span class="text-muted small pt-2 ps-1" id="BTC-direction"></span>
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-ETH', 'Today');">Today</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-ETH', 'This Month');">This Month</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-ETH', 'This Year');">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">ETH <span id="ETH-type">| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6 id="ETH-price"></h6>
                      <span class="text-success small pt-1 fw-bold" id="ETH-rate"></span>
                      <span class="text-muted small pt-2 ps-1" id="ETH-direction" ></span>
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-XRP', 'Today');">Today</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-XRP', 'This Month');">This Month</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-XRP', 'This Year');">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">XRP <span id="XRP-type">| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6 id="XRP-price">1244</h6>
                      <span class="text-danger small pt-1 fw-bold" id="XRP-rate">12%</span>
                      <span class="text-muted small pt-2 ps-1" id="XRP-direction">decrease</span>
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="javascript:void(0);">Today</a></li>
                    <li><a class="dropdown-item" href="javascript:void(0);">This Month</a></li>
                    <li><a class="dropdown-item" href="javascript:void(0);">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart"></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="javascript:getCurrentInfo('KRW');">KRW</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentInfo('BTC');">BTC</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentInfo('USDT');">USDT</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Market <span id="market-type">| KRW</span></h5>
                  <table class="table table-borderless" id="market-table">
                    <thead>
                      <tr>
                        <th scope="col">한글명</th>
                        <th scope="col">현재가</th>
                        <th scope="col">전일대비</th>
                        <th scope="col">거래대금</th>
                      </tr>
                    </thead>
                    <tbody id="market-area">
                      <!-- <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Brandon Jacob</td>
                        <td><a href="#" class="text-primary">At praesentium minu</a></td>
                        <td>$64</td>
                        <td><span class="badge bg-success">Approved</span></td>
                      </tr> -->
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->
            
          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
      </div>
    </section>

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/dist/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/dist/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/dist/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/dist/assets/vendor/quill/quill.js"></script>
  <script src="/dist/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/dist/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/dist/assets/vendor/php-email-form/validate.js"></script>


  <!-- Template Main JS File -->
  <script src="/dist/assets/js/main.js"></script>
  <script type="text/javascript">
  var market = {};
  var currentInfo = {};
  var ws = null;
  var UUID = `${UUID}`;
  var marketTable;
  	$(document).ready(function(){
		getCurrentPrice('KRW-BTC,KRW-ETH,KRW-XRP', 'Today');
		getCurrentInfo('KRW');
// 		ws = socket.init(format.socketUrl);
// 		updateRowById("KRW-BTC", updatedData);
	});
  	
 	// 현재 마켓 정보 조회 로직 호출
  	function getCurrentInfo(type){
  		getMarket(currentInfo);
  		getTicker(currentInfo, type);
  		drawCurrentMarketList(currentInfo, type, market);
  	}
  	
  	// 거래 가능 마켓 정보 조회
	function getMarket(currentInfo){
		var result = null;
		$.ajax({
			type: "GET",
			url: "/api/markets",
			dataType : 'json',
			contentType: "application/json",
			data: {
				is_details: true
			},
			async: false,
			success : function (obj) {
				if(obj.header.code == 200){
					market['KRW'] = [];
					market['USDT'] = [];
					market['BTC'] = [];
					$(JSON.parse(obj.data)).each(function(idx, item) {
						market[item.market.split('-')[0]].push(item.market);
						currentInfo[item.market] = {}
						currentInfo[item.market]['market'] = item;
					});
				}else console.error(obj.header.message);
			},
			beforeSend: function(){},
			complete: function(){},
			error : function(request, status, error) {}
		});
		return result;
	}
	
	// {type} 마켓 현재 가격 조회
	function getTicker(currentInfo, type){
		var result = null;
		$.ajax({
			type: "GET",
			url: "/api/ticker/"+type,
			dataType : 'json',
			contentType: "application/json",
			data: {},
			async: false,
			success : function (obj) {
				if(obj.header.code == 200){
					//marketList = [];
					$(JSON.parse(obj.data)).each(function(idx, item) {
						//marketList.push(item.market);
						currentInfo[item.market]['ticker'] = item;
					});
				}
				else console.error(obj.header.message);
			},
			beforeSend: function(){},
			complete: function(){},
			error : function(request, status, error) {}
		});
		return result;
	}
	
	// 마켓 리스트 UI생성
	function drawCurrentMarketList(currentInfo, type, market){
		var html = '';
		$('#market-type').text('| '+type);
		var marketArray = [];
		$(market[type]).each(function(idx, name){
			console.log({
				'심볼':name,
				'거래량':currentInfo[name].ticker.acc_trade_price_24h,
				'현재가':currentInfo[name].ticker.trade_price
				});
			
			console.log();
			console.log();
			var data = {
				"id" : name
				,"한글명":	currentInfo[name].market.korean_name+'<br/>('+name.replace('-','/')+')'
				, "현재가":	parseInt(currentInfo[name].ticker.trade_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 })
				, "전일대비":	[(currentInfo[name].ticker.signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(currentInfo[name].ticker.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 })]
				, "거래대금(백만)":	 parseInt(currentInfo[name].ticker.acc_trade_price_24h).toLocaleString('ko-KR', { maximumFractionDigits: 0 }).slice(0,8)+'백만'
				, "trade_price":	 parseInt(currentInfo[name].ticker.acc_trade_price_24h).toLocaleString('ko-KR', { maximumFractionDigits: 0 }).slice(0,8)
			};
			marketArray.push(data);
		});
		console.log(marketArray);
		marketTable = $('#market-table').DataTable( {
		    data: marketArray
		    , columns: [
		    	{data: '한글명', orderable: true}
		    	, {data: '현재가', orderable: true}
		    	, {data: '전일대비', orderable: true}
// 		    	, {data: '전일대비(KRW)'}
		    	, {data: '거래대금(백만)', orderable: true}
		    	, {data: 'trade_price', visible: false }
		    	, {data: 'id', visible: false }
		    ]
			,searchCols: [
		        { search: "" } // 한글명 검색 가능
		        , null // 현재가 검색 제외
		        , null // 전일대비 기본 검색값(예: 상승 종목)
		        , null // 거래대금(백만) 검색 제외
		        , null // trade_price 검색 제외
		        , null  // id 검색 제외
		    ]
// 			,searching : false
// 			, lengthChange : false
// 			, info : false
			, fixedHeight: true
			, paging : false
			, destroy : true
			, ordering: true      //글 순서 설정
			, processing: true
			, order: [[4, 'desc']]
		});
	}
	
	// 현재 시세 조회 로직 호출
	function getCurrentPrice(name, range){
		drawCurrentPrice(currentPrice(name), range);
  	}
	
	// 현재 시세 조회
  	function currentPrice(name){
  		var result = null;
  		$.ajax({
			type: "GET",
			url: "/api/markets/"+name,
			dataType : 'json',
			contentType: "application/json",
			data: {},
			async: false,
			success : function (obj) {
				if(obj.header.code == 200){
					result = JSON.parse(obj.data);
				}
				else console.error(obj.header.message);
			},
			beforeSend: function(){
				
			},
			complete: function(){
				
			},
			error : function(request, status, error) {
				
			}
		});
  		return result;
  	}
  	
 	// 대표 마켓 UI생성
  	function drawCurrentPrice(list, range){
  		$(list).each(function(idx, item){
  			var name = item.market.split('-')[1];
  			$('#'+name+'-type').text('| '+range);
  			$('#'+name+'-price').text('￦ '+parseInt(item.trade_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 }));
  			if(item.signed_change_price > 0){	// +
  				$('#'+name+'-rate').removeClass('text-success');
  				$('#'+name+'-rate').removeClass('text-danger');
  				$('#'+name+'-rate').addClass('text-success');
  				$('#'+name+'-direction').text('increase');
  			}else if(item.signed_change_price == 0){	// =
  				$('#'+name+'-rate').removeClass('text-success');
  				$('#'+name+'-rate').removeClass('text-danger');
  				$('#'+name+'-direction').text('-');
  			}else{	// -
  				$('#'+name+'-rate').removeClass('text-success');
  				$('#'+name+'-rate').removeClass('text-danger');
  				$('#'+name+'-rate').addClass('text-danger');
  				$('#'+name+'-direction').text('decrease');
  			}
  			$('#'+name+'-rate').text((item.signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%');
  		});
  	}
 	
 	// 실시간 통신용
	const socket = {
		send: (ws, message) => {
			if (ws.readyState === WebSocket.OPEN) {
				ws.send(message);
			} else {
				console.error("WebSocket is not open.");
			}
		},
		close: (ws) => {
			if (ws.readyState === WebSocket.OPEN || ws.readyState === WebSocket.CLOSING) {
				ws.close();
			} else {
				console.error("WebSocket is already closed.");
			}
		},
		onMessage: (ws, callback) => {
			ws.onmessage = (event) => callback(event.data);
		},
		onOpen: (ws, callback) => {
			ws.onopen = callback;
		},
		onClose: (ws, callback) => {
			ws.onclose = callback;
		},
		onError: (ws, callback) => {
			ws.onerror = callback;
		},
		init: (url) => {
			
			const ws = new WebSocket(url);
			
			socket.onOpen(ws, () => console.log("WebSocket 연결됨"));
			
			socket.onMessage(ws, (data) => {
				data.text().then(appData => {
					appData = JSON.parse(appData);
					console.log("받은 데이터:",appData);
					console.log("마켓-심볼:",appData.code);
					console.log("현재가:",appData.trade_price);
				});
			});
			
			socket.onClose(ws, () => console.log("WebSocket 연결 종료됨"));
			
			socket.onError(ws, (err) => console.error("WebSocket 오류:", err));
			
			return ws;
		},
	};
 	
 	const format = {
 		socketUrl: 'wss://api.upbit.com/websocket/v1',
		ticker: (UUID, marketArray) => {
			return JSON.stringify([{"ticket":'KOOK-BIT-'+UUID},{"type":"ticker","codes":marketArray},{"format":"DEFAULT"}]);
		},
		LIST_SUBSCRIPTIONS: (UUID) => {
			return JSON.stringify([{"method": "LIST_SUBSCRIPTIONS"},{"ticket": 'KOOK-BIT-'+UUID}]);
		},
 	}
 	
	// 사용 예시
	let updatedData = {
	    '한글명': "새로운 종목",
	    '현재가': 52000,
	    '전일대비': "+2.5%",
	    '거래대금(백만)': 1500,
	    'trade_price': 52000,
	    'id': "KRW-BTC" // 기존 행의 ID와 동일해야 함
	};
 	function updateRowById(id, newData) {
 	    let row = marketTable.row(function(idx, data, node) {
 	        return data.id === id; // ID가 일치하는 행 찾기
 	    });

 	    if (row.length) {
 	        row.data(newData).draw(false); // 데이터 업데이트 후 다시 그리기
 	    } else {
 	        console.log("ID에 해당하는 행을 찾을 수 없습니다.");
 	    }
 	}
  </script>
  <!-- 컨텐츠 종료 -->
  <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</body>

</html>