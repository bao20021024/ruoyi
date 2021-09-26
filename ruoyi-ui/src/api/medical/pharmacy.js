import request from '@/utils/request'

// 查询药房库存列表
export function listPharmacy(query) {
  return request({
    url: '/medical/pharmacy/list',
    method: 'get',
    params: query
  })
}

// 查询药房库存详细
export function getPharmacy(id) {
  return request({
    url: '/medical/pharmacy/' + id,
    method: 'get'
  })
}

// 新增药房库存
export function addPharmacy(data) {
  return request({
    url: '/medical/pharmacy',
    method: 'post',
    data: data
  })
}

// 修改药房库存
export function updatePharmacy(data) {
  return request({
    url: '/medical/pharmacy',
    method: 'put',
    data: data
  })
}

// 删除药房库存
export function delPharmacy(id) {
  return request({
    url: '/medical/pharmacy/' + id,
    method: 'delete'
  })
}

// 导出药房库存
export function exportPharmacy(query) {
  return request({
    url: '/medical/pharmacy/export',
    method: 'get',
    params: query
  })
}