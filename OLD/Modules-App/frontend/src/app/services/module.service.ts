import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Module } from '../models/module.model';

const baseUrl = 'http://localhost:8006/api/modules';
const baseUrlRun = 'http://localhost:8888/ck001/run';

@Injectable({
  providedIn: 'root'
})
export class ModuleService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Module[]> {
    return this.http.get<Module[]>(baseUrl);
  }

  get(id: any): Observable<Module> {
    return this.http.get(`${baseUrl}/${id}`);
  }

  create(data: any): Observable<any> {
    return this.http.post(baseUrl, data);
  }

  update(id: any, data: any): Observable<any> {
    return this.http.put(`${baseUrl}/${id}`, data);
  }

  run(id: any, data: any): Observable<string> {
    return this.http.get(baseUrlRun, {responseType: 'text'});
  }

  delete(id: any): Observable<any> {
    return this.http.delete(`${baseUrl}/${id}`);
  }

  deleteAll(): Observable<any> {
    return this.http.delete(baseUrl);
  }

  findByTitle(title: any): Observable<Module[]> {
    return this.http.get<Module[]>(`${baseUrl}?title=${title}`);
  }
}



