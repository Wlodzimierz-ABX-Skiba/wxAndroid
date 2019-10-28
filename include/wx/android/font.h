/////////////////////////////////////////////////////////////////////////////
// Name:        wx/android/font.h
// Purpose:     wxFont class
// Author:      Wlodzimierz ABX Skiba
// Created:     2019-10-26
// Copyright:   (c) Wlodzimierz ABX Skiba 2019
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANDROID_FONT_H_
#define _WX_ANDROID_FONT_H_

#include <android/font.h>

class WXDLLIMPEXP_CORE wxFont : public wxFontBase
{
public:
    wxFont();
    wxFont(const wxFontInfo& info);
    wxFont(const wxString& nativeFontInfoString);
    wxFont(const wxNativeFontInfo& info);
    wxFont(const AFont& font);
    wxFont(int size,
           wxFontFamily family,
           wxFontStyle style,
           wxFontWeight weight,
           bool underlined = false,
           const wxString& face = wxEmptyString,
           wxFontEncoding encoding = wxFONTENCODING_DEFAULT);
    wxFont(const wxSize& pixelSize,
           wxFontFamily family,
           wxFontStyle style,
           wxFontWeight weight,
           bool underlined = false,
           const wxString& face = wxEmptyString,
           wxFontEncoding encoding = wxFONTENCODING_DEFAULT);

    wxDEPRECATED_MSG("use wxFONT{FAMILY,STYLE,WEIGHT}_XXX constants")
    wxFont(int size,
           int family,
           int style,
           int weight,
           bool underlined = false,
           const wxString& face = wxEmptyString,
           wxFontEncoding encoding = wxFONTENCODING_DEFAULT);

    bool Create(wxSize size,
                wxFontFamily family,
                wxFontStyle style,
                wxFontWeight weight,
                bool underlined = false,
                const wxString& face = wxEmptyString,
                wxFontEncoding encoding = wxFONTENCODING_DEFAULT);

    // accessors: get the font characteristics
    virtual float GetFractionalPointSize() const wxOVERRIDE;
    virtual wxFontStyle GetStyle() const wxOVERRIDE;
    virtual int GetNumericWeight() const wxOVERRIDE;
    virtual bool GetUnderlined() const wxOVERRIDE;
    virtual wxString GetFaceName() const wxOVERRIDE;
    virtual wxFontEncoding GetEncoding() const wxOVERRIDE;
    virtual const wxNativeFontInfo *GetNativeFontInfo() const wxOVERRIDE;

    // change the font characteristics
    virtual void SetFractionalPointSize(float pointSize) wxOVERRIDE;
    virtual void SetFamily( wxFontFamily family ) wxOVERRIDE;
    virtual void SetStyle( wxFontStyle style ) wxOVERRIDE;
    virtual void SetNumericWeight(int weight) wxOVERRIDE;
    virtual bool SetFaceName(const wxString& facename) wxOVERRIDE;
    virtual void SetUnderlined( bool underlined ) wxOVERRIDE;
    virtual void SetEncoding(wxFontEncoding encoding) wxOVERRIDE;
    
    wxDECLARE_COMMON_FONT_METHODS();

    virtual AFont GetHandle() const;
    
protected:
    virtual wxGDIRefData *CreateGDIRefData() const wxOVERRIDE;
    virtual wxGDIRefData *CloneGDIRefData(const wxGDIRefData *data) const wxOVERRIDE;
    virtual wxFontFamily DoGetFamily() const wxOVERRIDE;

    wxDECLARE_DYNAMIC_CLASS(wxFont);

};


#endif // _WX_ANDROID_FONT_H_
