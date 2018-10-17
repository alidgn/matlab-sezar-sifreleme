function varargout = sezar_sifreleme(varargin)
% CAESARCIPHER M-file for caesarcipher.fig
%      CAESARCIPHER, by itself, creates a new CAESARCIPHER or raises the
%      existing singleton*.
%
%      H = CAESARCIPHER returns the handle to a new CAESARCIPHER or the
%      handle to the existing singleton*.
%
%      CAESARCIPHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAESARCIPHER.M with the given input arguments.
%
%      CAESARCIPHER('Property','Value',...) creates a new CAESARCIPHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before caesarcipher_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to caesarcipher_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help caesarcipher

% Last Modified by GUIDE v2.5 05-May-2018 13:58:05

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sezar_sifreleme_OpeningFcn, ...
                   'gui_OutputFcn',  @sezar_sifreleme_OutputFcn, ...
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


% --- Executes just before caesarcipher is made visible.
function sezar_sifreleme_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to caesarcipher (see VARARGIN)

% Choose default command line output for caesarcipher
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes caesarcipher wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sezar_sifreleme_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_sifrele_Callback(hObject, eventdata, handles)
% hObject    handle to txt_sifrele (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_sifrele as text
%        str2double(get(hObject,'String')) returns contents of txt_sifrele as a double

% --- Executes during object creation, after setting all properties.
function txt_sifrele_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_sifrele (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_sifrele.
function btn_sifrele_Callback(hObject, eventdata, handles)
% hObject    handle to btn_sifrele (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt_kaydir_sifrele.
function txt_kaydir_sifrele_Callback(hObject, eventdata, handles)
% hObject    handle to txt_kaydir_sifrele (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt_kaydir_sifrele contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt_kaydir_sifrele
str = get(hObject,'String');


% --- Executes during object creation, after setting all properties.
function txt_kaydir_sifrele_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_kaydir_sifrele (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txt_coz_Callback(hObject, eventdata, handles)
% hObject    handle to txt_coz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_coz as text
%        str2double(get(hObject,'String')) returns contents of txt_coz as a double


% --- Executes during object creation, after setting all properties.
function txt_coz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_coz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_coz.
function btn_coz_Callback(hObject, eventdata, handles)
% hObject    handle to btn_coz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in txt_kaydir_coz.
function txt_kaydir_coz_Callback(hObject, eventdata, handles)
% hObject    handle to txt_kaydir_coz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt_kaydir_coz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt_kaydir_coz


% --- Executes during object creation, after setting all properties.
function txt_kaydir_coz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_kaydir_coz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
%function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
