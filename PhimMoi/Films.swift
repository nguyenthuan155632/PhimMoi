//
//  Films.swift
//  PhimMoi
//
//  Created by vensera on 6/25/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import Foundation

class Films {
    
    let fs_title_vi: String = ""
    let fs_title_en: String = ""
    let fs_duration: String = ""
    let fs_url: String = ""
    let fs_image: String = ""
    let fs_status: String = ""
    
    var url: String = ""
    
    init(url: String) {
        self.url = url
    }
    
    func filmList() -> Array<Array<String>> {
        var films = [Array<String>]()
        films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub - Thuyết Minh"])
        films.append(["Bảy viên ngọc rồng siêu cấp", "Dragon Ball Super", "96/145", "http://www.phimmoi.net/phim/dragon-ball-super-7-vien-ngoc-rong-sieu-cap-i3-2844/", "poster.medium-6", "HD-Vietsub - Thuyết Minh"])
        films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
        films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
        films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        films.append(["Năm anh em siêu nhân", "Power Rangers", "125 phút", "http://www.phimmoi.net/phim/nam-anh-em-sieu-nhan-4322/", "poster.medium-8", "HD-Vietsub"])
        films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
        films.append(["Vẹt cò phiêu lưu ký", "A Stork's Journey", "86 phút", "http://www.phimmoi.net/phim/vet-co-phieu-luu-ky-5410/", "poster.medium-7", "HD"])
        films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
        films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub - Thuyết Minh"])
        films.append(["Bảy viên ngọc rồng siêu cấp", "Dragon Ball Super", "96/145", "http://www.phimmoi.net/phim/dragon-ball-super-7-vien-ngoc-rong-sieu-cap-i3-2844/", "poster.medium-6", "HD-Vietsub - Thuyết Minh"])
        films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
        films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub"])
        films.append(["Long châu truyền kỳ", "Dragon Ball Legend", "90/90", "http://www.phimmoi.net/phim/long-chau-truyen-ky-5249/", "poster.medium-9", "Hoàn tất"])
        films.append(["Năm anh em siêu nhân", "Power Rangers", "125 phút", "http://www.phimmoi.net/phim/nam-anh-em-sieu-nhan-4322/", "poster.medium-8", "HD-Vietsub"])
        films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
        films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        return films
    }
    
    func getFilms(type: Int) -> Array<Array<String>> {
        var films = [Array<String>]()
        if(type == 1) {
            films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub - Thuyết Minh"])
            films.append(["Bảy viên ngọc rồng siêu cấp", "Dragon Ball Super", "96/145", "http://www.phimmoi.net/phim/dragon-ball-super-7-vien-ngoc-rong-sieu-cap-i3-2844/", "poster.medium-6", "HD-Vietsub - Thuyết Minh"])
            films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
            films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        }
        if(type == 2) {
            films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
            films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
            films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
            films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        }
        if(type == 3) {
            films.append(["Năm anh em siêu nhân", "Power Rangers", "125 phút", "http://www.phimmoi.net/phim/nam-anh-em-sieu-nhan-4322/", "poster.medium-8", "HD-Vietsub"])
            films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
            films.append(["Vẹt cò phiêu lưu ký", "A Stork's Journey", "86 phút", "http://www.phimmoi.net/phim/vet-co-phieu-luu-ky-5410/", "poster.medium-7", "HD"])
            films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
            films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub - Thuyết Minh"])
            films.append(["Bảy viên ngọc rồng siêu cấp", "Dragon Ball Super", "96/145", "http://www.phimmoi.net/phim/dragon-ball-super-7-vien-ngoc-rong-sieu-cap-i3-2844/", "poster.medium-6", "HD-Vietsub - Thuyết Minh"])
            films.append(["Cướp biển vùng Caribbe 5", "Pirates of the Caribbean: Dead Men Tell No Tales", "129 phút", "http://www.phimmoi.net/phim/cuop-bien-vung-caribbe-phan-5-salazar-bao-thu-4280/", "poster.medium-4", "HD-Vietsub"])
            films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
        }
        if(type == 4) {
            films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
            films.append(["Vật chất bí ẩn (Phần 3)", "Dark Matter (Season 3)", "4/13", "http://www.phimmoi.net/phim/vat-chat-bi-an-phan-3-4226/", "poster.medium-5", "HD-Vietsub"])
            films.append(["Long châu truyền kỳ", "Dragon Ball Legend", "90/90", "http://www.phimmoi.net/phim/long-chau-truyen-ky-5249/", "poster.medium-9", "Hoàn tất"])
            films.append(["Năm anh em siêu nhân", "Power Rangers", "125 phút", "http://www.phimmoi.net/phim/nam-anh-em-sieu-nhan-4322/", "poster.medium-8", "HD-Vietsub"])
            films.append(["Spark: Thiên du ký", "Spark: A Space Tail", "91 phút", "http://www.phimmoi.net/phim/spark-thien-du-ky-5478/", "poster.medium", "HD-Vietsub"])
            films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
            films.append(["Vệ binh giải ngân hà 2", "Guardians of the Galaxy Vol. 2", "136 phút", "http://www.phimmoi.net/phim/ve-binh-dai-ngan-ha-2-4415/", "poster.medium-3", "HD-Vietsub"])
            films.append(["Kong: Đảo đầu lâu", "Kong: Skull Island", "118 phút", "http://www.phimmoi.net/phim/kong-dao-dau-lau-i3-4014/", "poster.medium-2", "HD-Vietsub - Thuyết Minh"])
        }
        
        return films
    }
    
    func chunkArray(arr: Array<Array<String>>, chunkSize: Int) -> Array<Array<Array<String>>> {
        let chunks = stride(from: 0, to: arr.count, by: chunkSize).map {
            Array(arr[$0..<min($0 + chunkSize, arr.count)])
        }
        return chunks
    }
    
}
