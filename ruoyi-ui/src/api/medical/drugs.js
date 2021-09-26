import request from '@/utils/request'

// 查询药品列表
export function listDrugs(query) {
  return request({
    url: '/medical/drugs/list',
    method: 'get',
    params: query
  })
}

// 查询药品详细
export function getDrugs(id) {
  return request({
    url: '/medical/drugs/' + id,
    method: 'get'
  })
}

// 新增药品
export function addDrugs(data) {
  return request({
    url: '/medical/drugs',
    method: 'post',
    data: data
  })
}

// 修改药品
export function updateDrugs(data) {
  return request({
    url: '/medical/drugs',
    method: 'put',
    data: data
  })
}

// 删除药品
export function delDrugs(id) {
  return request({
    url: '/medical/drugs/' + id,
    method: 'delete'
  })
}

// 导出药品
export function exportDrugs(query) {
  return request({
    url: '/medical/drugs/export',
    method: 'get',
    params: query
  })
}