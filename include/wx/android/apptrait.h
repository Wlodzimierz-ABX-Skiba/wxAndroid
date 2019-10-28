///////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/apptrait.h
// Purpose:     wxAppTraits classes
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-27
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_APPTRAIT_H_
#define _WX_ANDROID_APPTRAIT_H_

class WXDLLIMPEXP_BASE wxConsoleAppTraits : public wxConsoleAppTraitsBase
{
public:
#if wxUSE_CONSOLE_EVENTLOOP
    virtual wxEventLoopBase *CreateEventLoop() wxOVERRIDE;
#endif // wxUSE_CONSOLE_EVENTLOOP
#if wxUSE_TIMER
    virtual wxTimerImpl *CreateTimerImpl(wxTimer *timer) wxOVERRIDE;
#endif
};

#if wxUSE_GUI

class WXDLLIMPEXP_CORE wxGUIAppTraits : public wxGUIAppTraitsBase
{
public:
    virtual wxEventLoopBase *CreateEventLoop() wxOVERRIDE;

#if wxUSE_TIMER
    virtual wxTimerImpl *CreateTimerImpl(wxTimer *timer) wxOVERRIDE;
#endif

    wxPortId GetToolkitVersion(int *majVer = NULL,
                               int *minVer = NULL,
                               int *microVer = NULL) const wxOVERRIDE;

#if wxUSE_SOCKETS

#ifdef wxHAS_GUI_SOCKET_MANAGER
    virtual wxSocketManager *GetSocketManager() wxOVERRIDE;
#endif

#ifdef wxHAS_GUI_FDIOMANAGER
    virtual wxFDIOManager *GetFDIOManager() wxOVERRIDE;
#endif

#endif // wxUSE_SOCKETS

#if wxUSE_EVENTLOOP_SOURCE
    virtual wxEventLoopSourcesManagerBase* GetEventLoopSourcesManager() wxOVERRIDE;
#endif
};

#endif // wxUSE_GUI

#endif // _WX_ANDROID_APPTRAIT_H_

