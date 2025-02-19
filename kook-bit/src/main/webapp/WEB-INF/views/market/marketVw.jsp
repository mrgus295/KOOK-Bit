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
                    	<i class="bi">
                      <img src="/img/coin-logo/BTC.png" alt="/img/coin-logo/BTC.png">
                    	</i>
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
                    	<i class="bi">
                      <img src="/img/coin-logo/ETH.png" alt="/img/coin-logo/ETH.png">
                    	</i>
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
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-USDT', 'Today');">Today</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-USDT', 'This Month');">This Month</a></li>
                    <li><a class="dropdown-item" href="javascript:getCurrentPrice('KRW-USDT', 'This Year');">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">USDT <span id="USDT-type">| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    	<i class="bi">
                      <img src="/img/coin-logo/USDT.png" alt="/img/coin-logo/USDT.png">
                    	</i>
                    </div>
                    <div class="ps-3">
                      <h6 id="USDT-price">1244</h6>
                      <span class="text-danger small pt-1 fw-bold" id="USDT-rate">12%</span>
                      <span class="text-muted small pt-2 ps-1" id="USDT-direction">decrease</span>
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
                  <table class="table table-borderless" id="market-table"></table>
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
		getCurrentInfo('KRW');
		
		// socket 생성 및 메세지 전송
  		//ws = socket.init(format.socketUrl, 'KRW');
  		//ws = socket.customInit(format.customSocketUrl, 'KRW');
		getCurrentPrice('KRW-BTC,KRW-ETH,KRW-USDT', 'Today');
		
// 		setInterval(function () {
// 			marketTable.ajax.reload();
// 		}, 1000);
	});
  	
	//실시간 통신용
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
		onOpen: (ws, type, callback) => {
			ws.onopen = callback;
		},
		onClose: (ws, callback) => {
			ws.onclose = callback;
		},
		onError: (ws, callback) => {
			ws.onerror = callback;
		},
		customInit: (url, type) => {
			
			const ws = new WebSocket(url);
			
			socket.onOpen(ws, type, () => {
				console.log(type, "WebSocket 연결됨");
				socket.send(ws, format.customTicker(UUID, type));
			});
			// 현재가, 전일대비, 거래대금 수정
			socket.onMessage(ws, (data) => {
				appData = JSON.parse(data);
				console.log(appData);
				var acc_trade_price_24h = parseInt(appData.acc_trade_price_24h);
				var data = {
					"id" : appData.code
					,"한글명":	currentInfo[appData.code].market.korean_name+'<br/>('+appData.code.replace('-','/')+')'
					, "현재가":	appData.trade_price.toLocaleString('ko-KR')
					, "전일대비":	[(appData.signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(appData.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 })]
					, "거래대금":	 parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6)).toLocaleString('ko-KR', { maximumFractionDigits: 0 })+'백만'
					, "trade_price":	 parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6))
					, "signed_change_rate":	 appData.signed_change_rate
				};
				
				// 대표 마켓 가격 변경
				//if(appData.code.includes('KRW-BTC') || appData.code.includes('KRW-ETH') || appData.code.includes('KRW-USDT'))
					//drawTopMarketPrice(appData);
				
		 		updateRowById(appData.code, data);
			});
			socket.onClose(ws, () => console.log("WebSocket 연결 종료됨"));
			socket.onError(ws, (err) => console.error("WebSocket 오류:", err));
			return ws;
		},
		init: (url, type) => {
			
			const ws = new WebSocket(url);
			
			socket.onOpen(ws, type, () => {
				console.log(type, "WebSocket 연결됨");
				socket.send(ws, format.ticker(UUID, market[type]));
			});
			// 현재가, 전일대비, 거래대금 수정
			socket.onMessage(ws, (data) => {
				data.text().then(appData => {
					appData = JSON.parse(appData);
					console.log(appData);
					var acc_trade_price_24h = parseInt(appData.acc_trade_price_24h);
					var trade_price = appData.trade_price;
					var trade_priceHtml = '';
					var signed_change_rate = appData.signed_change_rate;
					var signed_change_rateHtml = '';
					
					if(signed_change_rate > 0){
						trade_priceHtml += '<span class="text-success small pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
						signed_change_rateHtml += '<span class="text-success small pt-1 fw-bold">';
						signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(appData.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
						signed_change_rateHtml += '</span>';
					}else if(signed_change_rate == 0){
						trade_priceHtml += '<span class="small pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
						signed_change_rateHtml += '<span class="small pt-1 fw-bold">';
						signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(appData.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
						signed_change_rateHtml += '</span>';
					}else{
						trade_priceHtml += '<span class="text-danger pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
						signed_change_rateHtml += '<span class="text-danger pt-1 fw-bold">';
						signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(appData.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
						signed_change_rateHtml += '</span>';
					}
					var data = {
						"id" : appData.code
						, "한글명": currentInfo[appData.code].market.korean_name+'<br/>('+appData.code.replace('-','/')+')'
						, "현재가": trade_priceHtml
						, "전일대비":	 signed_change_rateHtml
						, "거래대금":	 parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6)).toLocaleString('ko-KR', { maximumFractionDigits: 0 })+'백만'
						, "trade_price": parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6))
						, "signed_change_rate": appData.signed_change_rate
					};
					
					// 대표 마켓 가격 변경
// 					if(appData.code.includes('KRW-BTC') || appData.code.includes('KRW-ETH') || appData.code.includes('KRW-USDT'))
// 						drawTopMarketPrice(appData);
					
			 		updateRowById(appData.code, data);
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
		customSocketUrl: 'ws://192.168.103.63:8888/ticker/KOOK-BIT-'+UUID,
		customTicker: (UUID, type) => {
			return JSON.stringify([{"ticket":'KOOK-BIT-'+UUID},{"type": type}]);
		}
	}
	
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
  	
 	// 현재 마켓 정보 조회 로직 호출
  	function getCurrentInfo(type){
//   		if(ws != null){
//   			socket.close(ws);
//   			ws = socket.init(format.socketUrl, type);
//   		}
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
					$(JSON.parse(obj.data)).each(function(idx, item) {
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
		$('#market-type').text('| '+type);
		var marketArray = [];
		$(market[type]).each(function(idx, name){
			var acc_trade_price_24h = parseInt(currentInfo[name].ticker.acc_trade_price_24h);
			var trade_price = currentInfo[name].ticker.trade_price;
			var trade_priceHtml = '';
			var signed_change_rate = currentInfo[name].ticker.signed_change_rate;
			var signed_change_rateHtml = '';
			
			if(signed_change_rate > 0){
				trade_priceHtml += '<span class="text-success small pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
				signed_change_rateHtml += '<span class="text-success small pt-1 fw-bold">';
				signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(currentInfo[name].ticker.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
				signed_change_rateHtml += '</span>';
			}else if(signed_change_rate == 0){
				trade_priceHtml += '<span class="small pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
				signed_change_rateHtml += '<span class="small pt-1 fw-bold">';
				signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(currentInfo[name].ticker.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
				signed_change_rateHtml += '</span>';
			}else{
				trade_priceHtml += '<span class="text-danger pt-1 fw-bold">'+trade_price.toLocaleString('ko-KR')+'</span>';
				signed_change_rateHtml += '<span class="text-danger pt-1 fw-bold">';
				signed_change_rateHtml += 	(signed_change_rate * 100).toLocaleString('ko-KR', { maximumFractionDigits: 2 })+'%<br/>'+parseInt(currentInfo[name].ticker.signed_change_price).toLocaleString('ko-KR', { maximumFractionDigits: 2 });
				signed_change_rateHtml += '</span>';
			}
				
			var data = {
				"id" : name
				,"한글명":	currentInfo[name].market.korean_name+'<br/>('+name.replace('-','/')+')'
				, "현재가":	trade_priceHtml
				, "전일대비": signed_change_rateHtml
				, "거래대금":	 parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6)).toLocaleString('ko-KR', { maximumFractionDigits: 0 })+'백만'
				, "trade_price":	 parseInt(acc_trade_price_24h.toString().slice(0,acc_trade_price_24h.toString().length-6))
				, "signed_change_rate": signed_change_rate
			};
			marketArray.push(data);
		});
		console.log(marketArray);
		marketTable = new DataTable('#market-table', {
// 			ajax: {
// 				type: "GET",
// 				url: "/api/ticker/"+type,
// 				dataType : 'json',
// 				contentType: "application/json",
// 				data: {},
// 				async: false,
// 				success : function (obj) {
// 					if(obj.header.code == 200){
// 						$(JSON.parse(obj.data)).each(function(idx, item) {
// 							currentInfo[item.market]['ticker'] = item;
// 						});
// 					}
// 					else console.error(obj.header.message);
// 				},
// 				beforeSend: function(){},
// 				complete: function(){},
// 				error : function(request, status, error) {}
// 			}, 
		    data: marketArray
		    , columns: [
		    	{data: '한글명', title: '한글명', /* name: '한글명', */ orderable: true, searchable: true}
		    	, {data: '현재가', title: '현재가', name: '현재가', orderable: true, searchable: false}
		    	, {data: '전일대비', title: '전일대비', name: '전일대비', orderable: true, searchable: false}
		    	, {data: '거래대금', title: '거래대금', name: '거래대금', orderable: true, searchable: false}
		    	, {data: 'trade_price', title: 'trade_price', name: 'trade_price', visible: false, searchable: false}
		    	, {data: 'signed_change_rate', title: 'signed_change_rate', name: 'signed_change_rate', visible: false, searchable: false} 
		    	, {data: 'id', title: 'id', name: 'id', visible: false, searchable: false}
		    ]
			, columnDefs: [{
	            targets: 3, // 거래대금 컬럼 인덱스 (0부터 시작)
	            orderData: [4] // trade_price(인덱스 4) 값으로 정렬
	        },{
	            targets: 2, // 거래대금 컬럼 인덱스 (0부터 시작)
	            orderData: [5] // trade_price(인덱스 4) 값으로 정렬
        	}]
			, fixedWidth: true
			, paging : false
			, scrollY: '500'
			, scroller: true
			, destroy : true
			, ordering: true      //글 순서 설정
			, searchCols: [
		        { search: "", smart: true } // 한글명 검색 가능
		        , null // 현재가 검색 제외
		        , null // 전일대비
		        , null // 거래대금 검색 제외
		        , null // trade_price 검색 제외
		        , null  // signed_change_rate 검색 제외
		        , null  // id 검색 제외
		    ]
			, processing: true
			, order: [[4, 'desc']]
		});
	}
	
	// 현재 시세 조회 로직 호출
	function getCurrentPrice(name, range){
		drawTopMarketPriceList(currentPrice(name), range);
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
			beforeSend: function(){},
			complete: function(){},
			error : function(request, status, error) {}
		});
  		return result;
  	}
  	
 	// 대표 마켓 UI생성
  	function drawTopMarketPriceList(list, range){
 		console.log(list);
  		$(list).each(function(idx, item){
  			drawTopMarketPrice(item);
  		});
  	}
 	
  	function drawTopMarketPrice(item){
  		var name = item.market.split('-')[1];
		$('#'+name+'-type').text('| KRW');
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
  	}
  </script>
  <!-- 컨텐츠 종료 -->
  <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</body>

</html>