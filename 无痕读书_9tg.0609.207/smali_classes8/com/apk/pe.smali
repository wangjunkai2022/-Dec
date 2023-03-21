.class public Lcom/apk/pe;
.super Lcom/apk/yv;
.source "WebContentView.java"


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iput-object p2, p0, Lcom/apk/pe;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    const v1, 0x7f090620

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do:Landroid/widget/EditText;

    .line 3
    iget-object p1, p0, Lcom/apk/pe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/apk/pe;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/apk/pe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do:Landroid/widget/EditText;

    .line 8
    iget-object v0, p0, Lcom/apk/pe;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/apk/pe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do:Landroid/widget/EditText;

    .line 11
    iget-object v0, p0, Lcom/apk/pe;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
