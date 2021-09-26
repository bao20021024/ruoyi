import request from '@/utils/request'

// 查询盘点记录列表
export function listInventory(query) {
  return request({
    url: '/medical/inventory/list',
    method: 'get',
    params: query
  })
}

// 查询盘点记录详细
export function getInventory(id) {
  return request({
    url: '/medical/inventory/' + id,
    method: 'get'
  })
}

// 新增盘点记录
export function addInventory(data) {
  return request({
    url: '/medical/inventory',
    method: 'post',
    data: data
  })
}

// 修改盘点记录
export function updateInventory(data) {
  return request({
    url: '/medical/inventory',
    method: 'put',
    data: data
  })
}

// 删除盘点记录
export function delInventory(id) {
  return request({
    url: '/medical/inventory/' + id,
    method: 'delete'
  })
}

// 导出盘点记录
export function exportInventory(query) {
  return request({
    url: '/medical/inventory/export',
    method: 'get',
    params: query
  })
}