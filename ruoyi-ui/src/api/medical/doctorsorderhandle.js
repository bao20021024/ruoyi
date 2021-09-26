import request from '@/utils/request'

// 查询医嘱执行记录列表
export function listDoctorsorderhandle(query) {
  return request({
    url: '/medical/doctorsorderhandle/list',
    method: 'get',
    params: query
  })
}

// 查询医嘱执行记录详细
export function getDoctorsorderhandle(id) {
  return request({
    url: '/medical/doctorsorderhandle/' + id,
    method: 'get'
  })
}

// 新增医嘱执行记录
export function addDoctorsorderhandle(data) {
  return request({
    url: '/medical/doctorsorderhandle',
    method: 'post',
    data: data
  })
}

// 修改医嘱执行记录
export function updateDoctorsorderhandle(data) {
  return request({
    url: '/medical/doctorsorderhandle',
    method: 'put',
    data: data
  })
}

// 删除医嘱执行记录
export function delDoctorsorderhandle(id) {
  return request({
    url: '/medical/doctorsorderhandle/' + id,
    method: 'delete'
  })
}

// 导出医嘱执行记录
export function exportDoctorsorderhandle(query) {
  return request({
    url: '/medical/doctorsorderhandle/export',
    method: 'get',
    params: query
  })
}