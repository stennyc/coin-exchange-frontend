<div class="slider" id="tradelist-wrap">
  <div class="transfer" style="width: 1900px;">
    <div class="frame" style="width: 950px;">
      <div id="table-tradelist-wrap" class="vmarg40bot" ng-controller="TradesController">
        <h4 class="title">Trades</h4>

        <div class="form-inline" role="grid">
          <div class="row" ng-hide="loaded">
            <p style="text-align: center">
              <i class="icon-spinner icon-spin icon-large icon-5x"></i>
              Loading...
            </p>
          </div>

          <table class="table table-hover table-striped dataTable" ng-show="loaded">
            <thead>
            <tr role="row">
              <th ng-click="updateSorting('TradeId')" class="lalign nw"
                  ng-class="getSortingClass('TradeId')" style="width: 55px;">Trade</th>
              <th ng-click="updateSorting('ExecutionDateTime')" class="lalign nw"
                  ng-class="getSortingClass('ExecutionDateTime')" style="width: 160px;">Executed</th>
              <th ng-click="updateSorting('Price')" class="ralign nw"
                  ng-class="getSortingClass('Price')" style="width: 80px;">Price</th>
              <th ng-click="updateSorting('Volume')" class="ralign"
                  ng-class="getSortingClass('Volume')" style="width: 115px;">Volume</th>
              <th ng-click="updateSorting('CurrencyPair')" class="lalign"
                  ng-class="getSortingClass('CurrencyPair')" style="width: 50px;">Pair</th>
              <th ng-click="updateSorting('Cost')" class="ralign" style="width: 115px;"
                  ng-class="getSortingClass('Cost')">Cost</th>
            </tr>
            </thead>

            <tbody>
            <tr ng-repeat="trade in trades | orderBy:sort.predicate:sort.reverse"
                ng-class="{even: $even, odd: $odd}" ng-cloak>
              <td class="nw">{{trade.TradeId| limitTo: 8}}</td>
              <td class="nw">{{trade.ExecutionDateTime | date : 'MM-dd-yy h:mm:ss'}}</td>
              <td class="nw ralign">{{trade.Price}}</td>
              <td class="ralign">{{trade.Volume}}</td>
              <td class="lalign">{{trade.CurrencyPair}}</td>
              <td class="ralign">{{trade.Cost}}</td>
            </tr>

            <tr class="odd" ng-hide="trades.length">
              <td valign="top" colspan="5" class="dataTables_empty">No trades yet.</td>
            </tr>
            </tbody>
          </table>

          <div>
            <div class="pull-right">
              <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                          previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"
                          max-size="maxSize" class="pagination-sm"
                          boundary-links="true" rotate="false"></pagination>
            </div>

            <div class="pull-left">
              <div class="dataTables_info">
                {{currentMinIndex}} - {{currentMaxIndex}} of {{totalItems}} trades
              </div>
            </div>

          </div>

          <div class="row">
            <div class="span3">
              <div class="dataTables_info"></div>
            </div>

            <div class="span5 offset1"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
