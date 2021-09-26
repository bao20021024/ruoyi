import request from '@/utils/request'

// 查询医嘱记录列表
export function listDoctorsorder(query) {
  return request({
    url: '/medical/doctorsorder/list',
    method: 'get',
    params: query
  })
}

// 查询医嘱记录详细
export function getDoctorsorder(id) {
  return request({
    url: '/medical/doctorsorder/' + id,
    method: 'get'
  })
}

// 新增医嘱记录
export function addDoctorsorder(data) {
  return request({
    url: '/medical/doctorsorder',
    method: 'post',
    data: data
  })
}

// 修改医嘱记录
export function updateDoctorsorder(data) {
  return request({
    url: '/medical/doctorsorder',
    method: 'put',
    data: data
  })
}

// 删除医嘱记录
export function delDoctorsorder(id) {
  return request({
    url: '/medical/doctorsorder/' + id,
    method: 'delete'
  })
}

// 导出医嘱记录
export function exportDoctorsorder(query) {
  return request({
    url: '/medical/doctorsorder/export',
    method: 'get',
    params: query
  })
}