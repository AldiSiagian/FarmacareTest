*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Buka Website
    Open Browser    https://www.bookdepository.com/     firefox
    Close Browser

Menampilkan urutan harga buku dari yang terendah ke tertinggi
    Open Browser  https://www.bookdepository.com/     firefox
    Input Text  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/input[1]  health
    Press Keys  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/button  [Return]
    Page Should Contain health
    Press Keys /html/body/div[2]/div[5]/div[2]/div[3]/div[2]/form/select [Return]
    Press Keys /html/body/div[2]/div[5]/div[2]/div[3]/div[2]/form/select/option[2] [Return]
    Close Browser

Menambahkan buku ke dalam keranjang
    Open Browser  https://www.bookdepository.com/     firefox
    Input Text  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/input[1]  health
    Press Keys  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/button  [Return]
    Page Should Contain health
    Press Keys /html/body/div[2]/div[5]/div[2]/div[3]/div[2]/form/select [Return]
    Press Keys /html/body/div[2]/div[5]/div[2]/div[3]/div[2]/form/select/option[2] [Return]
    Press Keys /html/body/div[2]/div[5]/div[2]/div[4]/div/div/div/div/div[1]/div[3]/div/a [Return]
    Press Keys /html/body/div[11]/div/div/div[2]/div/div[1]/a[2] [Return]
    Close Browser

Mengurangi jumlah buku dari keranjang
    Open Browser  https://www.bookdepository.com/     firefox
    Input Text  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/input[1]  health
    Press Keys  /html/body/div[2]/div[2]/header/div[2]/div[4]/form/div[1]/button  [Return]
    Page Should Contain health
    Press Keys  /html/body/div[2]/div[4]/div/div/div[3]/a/i  [Return]
    Press Keys  /html/body/div[2]/div[5]/div/div[2]/div[2]/div[2]/form[2]/button  [Return]
    Close Browser


