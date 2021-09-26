import request from '@/utils/request'

// 查询患者费用明细列表
export function listDetail(query) {
  return request({
    url: '/medical/detail/list',
    method: 'get',
    params: query
  })
}

// 查询患者费用明细详细
export function getDetail(id) {
  return request({
    url: '/medical/detail/' + id,
    method: 'get'
  })
}

// 新增患者费用明细
export function addDetail(data) {
  return request({
    url: '/medical/detail',
    method: 'post',
    data: data
  })
}

// 修改患者费用明细
export function updateDetail(data) {
  return request({
    url: '/medical/detail',
    method: 'put',
    data: data
  })
}

// 删除患者费用明细
export function delDetail(id) {
  return request({
    url: '/medical/detail/' + id,
    method: 'delete'
  })
}

// 导出患者费用明细
export function exportDetail(query) {
  return request({
    url: '/medical/detail/export',
    method: 'get',
    params: query
  })
}