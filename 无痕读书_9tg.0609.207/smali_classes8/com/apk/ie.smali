.class public Lcom/apk/ie;
.super Ljava/lang/Object;
.source "WebContentPopup.java"

# interfaces
.implements Lcom/apk/jd;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ie;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ie;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->else:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/ie;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
