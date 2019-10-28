///////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/window.h
// Purpose:     wxWindow class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_WINDOW_H_
#define _WX_ANDROID_WINDOW_H_

#include <list>

class WXDLLIMPEXP_FWD_CORE wxScrollBar;

class WXDLLIMPEXP_CORE wxWindowAndroid : public wxWindowBase
{
public:
    wxWindowAndroid();
    ~wxWindowAndroid();
    wxWindowAndroid(wxWindowAndroid *parent,
                wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = 0,
                const wxString& name = wxPanelNameStr);

    bool Create(wxWindowAndroid *parent,
                wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = 0,
                const wxString& name = wxPanelNameStr);

    // Used by all window classes in the widget creation process.
    void PostCreation( bool generic = true );

    void AddChild( wxWindowBase *child ) wxOVERRIDE;

    virtual bool Show( bool show = true ) wxOVERRIDE;

    virtual void SetLabel(const wxString& label) wxOVERRIDE;
    virtual wxString GetLabel() const wxOVERRIDE;

    virtual void DoEnable( bool enable ) wxOVERRIDE;
    virtual void SetFocus() wxOVERRIDE;

    // Parent/Child:
    virtual bool Reparent( wxWindowBase *newParent ) wxOVERRIDE;

    // Z-order
    virtual void Raise() wxOVERRIDE;
    virtual void Lower() wxOVERRIDE;

    // move the mouse to the specified position
    virtual void WarpPointer(int x, int y) wxOVERRIDE;

    virtual void Update() wxOVERRIDE;
    virtual void Refresh( bool eraseBackground = true,
                          const wxRect *rect = (const wxRect *) NULL ) wxOVERRIDE;

    virtual bool SetCursor( const wxCursor &cursor ) wxOVERRIDE;
    virtual bool SetFont(const wxFont& font) wxOVERRIDE;

    // get the (average) character size for the current font
    virtual int GetCharHeight() const wxOVERRIDE;
    virtual int GetCharWidth() const wxOVERRIDE;

    virtual void SetScrollbar( int orient,
                               int pos,
                               int thumbvisible,
                               int range,
                               bool refresh = true ) wxOVERRIDE;
    virtual void SetScrollPos( int orient, int pos, bool refresh = true ) wxOVERRIDE;
    virtual int GetScrollPos( int orient ) const wxOVERRIDE;
    virtual int GetScrollThumb( int orient ) const wxOVERRIDE;
    virtual int GetScrollRange( int orient ) const wxOVERRIDE;

        // scroll window to the specified position
    virtual void ScrollWindow( int dx, int dy,
                               const wxRect* rect = NULL ) wxOVERRIDE;

    // Styles
    virtual void SetWindowStyleFlag( long style ) wxOVERRIDE;
    virtual void SetExtraStyle( long exStyle ) wxOVERRIDE;

    virtual bool SetBackgroundStyle(wxBackgroundStyle style) wxOVERRIDE;
    virtual bool IsTransparentBackgroundSupported(wxString* reason = NULL) const wxOVERRIDE;
    virtual bool SetTransparent(wxByte alpha) wxOVERRIDE;
    virtual bool CanSetTransparent() wxOVERRIDE { return true; }

    WXWidget GetHandle() const wxOVERRIDE;

#if wxUSE_DRAG_AND_DROP
    virtual void SetDropTarget( wxDropTarget *dropTarget ) wxOVERRIDE;
#endif

#if wxUSE_ACCEL
    // accelerators
    // ------------
    virtual void SetAcceleratorTable( const wxAcceleratorTable& accel ) wxOVERRIDE;
#endif // wxUSE_ACCEL

protected:
    virtual void DoGetTextExtent(const wxString& string,
                                 int *x, int *y,
                                 int *descent = NULL,
                                 int *externalLeading = NULL,
                                 const wxFont *font = NULL) const wxOVERRIDE;

    // coordinates translation
    virtual void DoClientToScreen( int *x, int *y ) const wxOVERRIDE;
    virtual void DoScreenToClient( int *x, int *y ) const wxOVERRIDE;

    // capture/release the mouse, used by Capture/ReleaseMouse()
    virtual void DoCaptureMouse() wxOVERRIDE;
    virtual void DoReleaseMouse() wxOVERRIDE;

    // retrieve the position/size of the window
    virtual void DoGetPosition(int *x, int *y) const wxOVERRIDE;

    virtual void DoSetSize(int x, int y, int width, int height, int sizeFlags = wxSIZE_AUTO) wxOVERRIDE;
    virtual void DoGetSize(int *width, int *height) const wxOVERRIDE;

    // same as DoSetSize() for the client size
    virtual void DoSetClientSize(int width, int height) wxOVERRIDE;
    virtual void DoGetClientSize(int *width, int *height) const wxOVERRIDE;

    virtual void DoMoveWindow(int x, int y, int width, int height) wxOVERRIDE;

#if wxUSE_TOOLTIPS
    virtual void DoSetToolTip( wxToolTip *tip ) wxOVERRIDE;
#endif // wxUSE_TOOLTIPS

#if wxUSE_MENUS
    virtual bool DoPopupMenu(wxMenu *menu, int x, int y) wxOVERRIDE;
#endif // wxUSE_MENUS

private:
    void Init();

    wxScrollBar *m_horzScrollBar;
    wxScrollBar *m_vertScrollBar;
    
    bool m_mouseInside;

    wxDECLARE_DYNAMIC_CLASS_NO_COPY( wxWindowAndroid );
};

#endif // _WX_ANDROID_WINDOW_H_
