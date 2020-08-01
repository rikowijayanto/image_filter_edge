function varargout = tugas_pcd_2_filter_detektepi(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas_pcd_2_filter_detektepi_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas_pcd_2_filter_detektepi_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before tugas_pcd_2_filter_detektepi is made visible.
function tugas_pcd_2_filter_detektepi_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.MENU1,'visible', 'on')
set(handles.MENU2,'visible', 'off')

% UIWAIT makes tugas_pcd_2_filter_detektepi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas_pcd_2_filter_detektepi_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;




function filename_Callback(hObject, eventdata, handles)

function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
[filename,name_path1] = uigetfile( ...
    {'*.bmp;*.jpg;*.tif','Files of type (*.bmp,*.jpg,*.tif)';
    '*.bmp','File Bitmap (*.bmp)';...
    '*.jpg','File jpeg (*.jpg)';
    '*.tif','File Tif (*.tif)';
    '*.*','All Files (*.*)'},...
    'Open Image');
set(handles.filename,'string',filename);
handles.img=imread(filename);
handles.img_filter=handles.img;
if(size(handles.img,3)==3)
    handles.img_bw=rgb2gray(imread(filename));
else
    handles.img_bw=handles.img;
end
axes(handles.axes3);
imshow(handles.img);
axes(handles.axes4);
imshow(handles.img);
axes(handles.axes6);
imshow(handles.img);
axes(handles.axes7);
imshow(handles.img);
guidata(hObject, handles)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as text
%        str2double(get(hObject,'String')) returns contents of a1 as a double


% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2_Callback(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2 as text
%        str2double(get(hObject,'String')) returns contents of a2 as a double


% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a3_Callback(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a3 as text
%        str2double(get(hObject,'String')) returns contents of a3 as a double


% --- Executes during object creation, after setting all properties.
function a3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b2 as text
%        str2double(get(hObject,'String')) returns contents of b2 as a double


% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b3_Callback(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b3 as text
%        str2double(get(hObject,'String')) returns contents of b3 as a double


% --- Executes during object creation, after setting all properties.
function b3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1 as text
%        str2double(get(hObject,'String')) returns contents of c1 as a double


% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c2 as text
%        str2double(get(hObject,'String')) returns contents of c2 as a double


% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c3 as text
%        str2double(get(hObject,'String')) returns contents of c3 as a double


% --- Executes during object creation, after setting all properties.
function c3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in input_mask.
function input_mask_Callback(hObject, eventdata, handles)
a1=str2double(get(handles.a1,'String'));
a2=str2double(get(handles.a2,'String'));
a3=str2double(get(handles.a3,'String'));
b1=str2double(get(handles.b1,'String'));
b2=str2double(get(handles.b2,'String'));
b3=str2double(get(handles.b3,'String'));
c1=str2double(get(handles.c1,'String'));
c2=str2double(get(handles.c2,'String'));
c3=str2double(get(handles.c3,'String'));
mask_new = [a1 a2 a3; b1 b2 b3; c1 c2 c3];
handles.img_filter = uint8(imfilter(double(handles.img),mask_new,'same'));
axes(handles.axes4)
imshow(handles.img_filter);
set(handles.uitable1, 'Data', mask_new);
% hObject    handle to input_mask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of input_mask


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function filter_menu_Callback(hObject, eventdata, handles)
set(handles.MENU1,'visible', 'on')
set(handles.MENU2,'visible', 'off')
% hObject    handle to filter_menu (see GCBO)
% eventdat5a  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function deteksi_tepi_menu_Callback(hObject, eventdata, handles)
set(handles.MENU1,'visible', 'off')
set(handles.MENU2,'visible', 'on')
% hObject    handle to deteksi_tepi_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in uibuttongroup8.
function uibuttongroup8_SelectionChangedFcn(hObject, eventdata, handles)
switch(get(eventdata.NewValue,'Tag'));
    case 'sobel'
        SobSx = [ -1 0 1 ; -2 0 2 ; -1 0 1 ];
        SobSy = [ 1 2 1 ; 0 0 0 ; -1 -2 -1 ];

        sobelX = conv2(double(im2bw(handles.img)), SobSx);
        sobelY = conv2(double(im2bw(handles.img)), SobSy);

        B = abs(sobelX) + abs(sobelY);
        axes(handles.axes6)
        imshow(B,[]);
        
    case 'prewitt'
        PrewPx = [ -1 0 1 ; -1 0 1 ; -1 0 1 ];
        PrewPy = [ 1 1 1 ; 0 0 0 ; -1 -1 -1 ];
        prewX = conv2(double(im2bw(handles.img)), PrewPx);
        prewY = conv2(double(im2bw(handles.img)), PrewPy);

        B = abs(prewX) + abs(prewY);
        axes(handles.axes6)
        imshow(B,[]);
        
    case 'robert'
        RobRx = [ 1 0 ; 0 -1 ]
        RobRy = [ 0 1 ; -1 0 ]
        
        robX = conv2(double(im2bw(handles.img)), RobRx);
        robY = conv2(double(im2bw(handles.img)),RobRy);

        B = abs(robX) + abs(robY);
        axes(handles.axes6)
        imshow(B,[]);
end
    


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
toBeSaved=handles.img_filter;
assignin('base','toBeSaved',toBeSaved);
[fileName, filePath]=uiputfile('*.jpg', 'Save toBeSaved as');
fileName = fullfile(fileName);
imwrite(toBeSaved, fileName , 'jpg');
guidata(hObject, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in f_gauss.
function f_gauss_Callback(hObject, eventdata, handles)
% hObject    handle to f_gauss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of f_gauss


% --- Executes on button press in f_median.
function f_median_Callback(hObject, eventdata, handles)
% hObject    handle to f_median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of f_median


% --- Executes on button press in f_average.
function f_average_Callback(hObject, eventdata, handles)
% hObject    handle to f_average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of f_average


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)

switch(get(eventdata.NewValue,'Tag'));
    case 'lp1'
        lpf1=[1/16 1/8 1/16;1/8 1/4 1/8;1/16 1/8 1/16];
        handles.img_filter=uint8(imfilter(double(handles.img),lpf1,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', lpf1);
    case 'lp2'
        lpf2=[1/10 1/10 1/10;1/10 1/5 1/10;1/10 1/10 1/10];
        handles.img_filter=uint8(imfilter(double(handles.img),lpf2,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', lpf2);
    case 'lp3'
        lpf3=[0 1 0;1 4 1;0 1 0]/8;
        handles.img_filter=uint8(imfilter(double(handles.img),lpf3,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', lpf3);
    case 'hp1'
        hpf1=[-1 -1 -1;-1 8 -1;-1 -1 -1];
        handles.img_filter=uint8(imfilter(double(handles.img),hpf1,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', hpf1);
    case 'hp2'
        hpf2=[ 0 -1 0;-1 5 -1; 0 -1 0];
        handles.img_filter=uint8(imfilter(double(handles.img),hpf2,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', hpf2);
    case 'hp3'
        hpf3=[ 1 -2 1;-2 5 -2; 1 -2 1];
        handles.img_filter=uint8(imfilter(double(handles.img),hpf3,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', hpf3);
    case 'f_gauss'
        gf = fspecial('gaussian', [3, 3], 5);
        handles.img_filter = uint8(imfilter(double(handles.img),gf,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', gf);
    case 'f_median'
        handles.img_filter=medfilt2(handles.img_bw,[3 3]);
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', []);
    case 'f_average'
        af = fspecial('average', [3, 3]);
        handles.img_filter = uint8(imfilter(double(handles.img),af,'same'));
        axes(handles.axes4)
        imshow(handles.img_filter);
        set(handles.uitable1, 'Data', af);
end
guidata(hObject, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
