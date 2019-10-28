/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/dialog.h
// Purpose:     wxDialog class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_DIALOG_H_
#define _WX_ANDROID_DIALOG_H_

#include "wx/dialog.h"

class WXDLLIMPEXP_CORE wxDialog : public wxDialogBase
{
public:
    wxDialog();
    wxDialog( wxWindow *parent, wxWindowID id,
            const wxString &title,
            const wxPoint &pos = wxDefaultPosition,
            const wxSize &size = wxDefaultSize,
            long style = wxDEFAULT_DIALOG_STYLE,
            const wxString &name = wxDialogNameStr );

    virtual ~wxDialog();
    
    bool Create( wxWindow *parent, wxWindowID id,
            const wxString &title,
            const wxPoint &pos = wxDefaultPosition,
            const wxSize &size = wxDefaultSize,
            long style = wxDEFAULT_DIALOG_STYLE,
            const wxString &name = wxDialogNameStr );

    virtual int ShowModal();
    virtual void EndModal(int retCode);
    virtual bool IsModal() const;

private:

    wxDECLARE_DYNAMIC_CLASS( wxDialog );
};


#endif // _WX_ANDROID_DIALOG_H_
