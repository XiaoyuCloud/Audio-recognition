function varargout = TINGFENGZHETWO(varargin)
% TINGFENGZHETWO MATLAB code for TINGFENGZHETWO.fig
%      TINGFENGZHETWO, by itself, creates a new TINGFENGZHETWO or raises the existing
%      singleton*.
%
%      H = TINGFENGZHETWO returns the handle to a new TINGFENGZHETWO or the handle to
%      the existing singleton*.
%
%      TINGFENGZHETWO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TINGFENGZHETWO.M with the given input arguments.
%
%      TINGFENGZHETWO('Property','Value',...) creates a new TINGFENGZHETWO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TINGFENGZHETWO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TINGFENGZHETWO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TINGFENGZHETWO

% Last Modified by GUIDE v2.5 08-Nov-2015 00:54:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TINGFENGZHETWO_OpeningFcn, ...
                   'gui_OutputFcn',  @TINGFENGZHETWO_OutputFcn, ...
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


% --- Executes just before TINGFENGZHETWO is made visible.
function TINGFENGZHETWO_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TINGFENGZHETWO (see VARARGIN)

% Choose default command line output for TINGFENGZHETWO
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TINGFENGZHETWO wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TINGFENGZHETWO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structur   e with handles and user data (see GUIDATA)
[ A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X ] = TINGFENGZHE3();
if(X==0)
   %set(handles.text3,'string','1234567890'); 
end;
if(X==1)
set(handles.text15,'string',A);
end;
if(X==2)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
end;
if(X==3)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
end;
if(X==4)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
end;
if(X==5)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
end;
if(X==6)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
end;
if(X==7)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
set(handles.text21,'string',G);
end;
if(X==8)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
set(handles.text21,'string',G);
set(handles.text22,'string',H);
end;
if(X==9)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
set(handles.text21,'string',G);
set(handles.text22,'string',H);
set(handles.text23,'string',I);
end;
if(X==10)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
set(handles.text21,'string',G);
set(handles.text22,'string',H);
set(handles.text23,'string',I);
set(handles.text24,'string',J);
end;
if(X>=11)
set(handles.text15,'string',A);
set(handles.text16,'string',B);
set(handles.text17,'string',C);
set(handles.text18,'string',D);
set(handles.text19,'string',E);
set(handles.text20,'string',F);
set(handles.text21,'string',G);
set(handles.text22,'string',H);
set(handles.text23,'string',I);
set(handles.text24,'string',J);
set(handles.text25,'string',K);
end;




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
