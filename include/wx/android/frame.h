/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/frame.h
// Purpose:     wxFrame class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-27
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_FRAME_H_
#define _WX_ANDROID_FRAME_H_

#include "wx/frame.h"

class WXDLLIMPEXP_CORE wxFrame : public wxFrameBase
{
public:
    wxFrame();
    wxFrame(wxWindow *parent,
               wxWindowID id,
               const wxString& title,
               const wxPoint& pos = wxDefaultPosition,
               const wxSize& size = wxDefaultSize,
               long style = wxDEFAULT_FRAME_STYLE,
               const wxString& name = wxFrameNameStr);
    virtual ~wxFrame();

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& title,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxDEFAULT_FRAME_STYLE,
                const wxString& name = wxFrameNameStr);

    #if wxUSE_MENUS
        virtual void SetMenuBar(wxMenuBar *menubar);
    #endif

    #if wxUSE_STATUSBAR
        virtual void SetStatusBar(wxStatusBar *statusBar );
    #endif

    #if wxUSE_TOOLBAR
        virtual void SetToolBar(wxToolBar *toolbar);
    #endif
    
    virtual void SetWindowStyleFlag( long style );

    virtual void AddChild( wxWindowBase *child );
    virtual void RemoveChild( wxWindowBase *child );

protected:
    virtual void DoGetClientSize(int *width, int *height) const;

private:

    wxDECLARE_DYNAMIC_CLASS( wxFrame );
};


#endif // _WX_ANDROID_FRAME_H_
