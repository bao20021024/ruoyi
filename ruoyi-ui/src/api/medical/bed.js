import request from '@/utils/request'

// 查询床位记录列表
export function listBed(query) {
  return request({
    url: '/medical/bed/list',
    method: 'get',
    params: query
  })
}

// 查询床位记录详细
export function getBed(id) {
  return request({
    url: '/medical/bed/' + id,
    method: 'get'
  })
}

// 新增床位记录
export function addBed(data) {
  return request({
    url: '/medical/bed',
    method: 'post',
    data: data
  })
}

// 修改床位记录
export function updateBed(data) {
  return request({
    url: '/medical/bed',
    method: 'put',
    data: data
  })
}

// 删除床位记录
export function delBed(id) {
  return request({
    url: '/medical/bed/' + id,
    method: 'delete'
  })
}

// 导出床位记录
export function exportBed(query) {
  return request({
    url: '/medical/bed/export',
    method: 'get',
    params: query
  })
}