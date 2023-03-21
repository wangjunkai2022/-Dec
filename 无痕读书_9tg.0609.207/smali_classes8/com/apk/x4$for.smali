.class public Lcom/apk/x4$for;
.super Lcom/apk/yv;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x4;->abstract(Lcom/biquge/ebook/app/bean/Book;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/Book;

.field public final synthetic if:Lcom/apk/x4;


# direct methods
.method public constructor <init>(Lcom/apk/x4;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x4$for;->if:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/x4$for;->do:Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 8

    const v0, 0x7f0905d2

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "\u300a"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u300b"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 6
    new-instance v4, Lcom/apk/uc;

    iget-object v5, p0, Lcom/apk/x4$for;->if:Lcom/apk/x4;

    .line 7
    iget-object v5, v5, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 8
    iget-object v6, p0, Lcom/apk/x4$for;->do:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/apk/x4$for;->do:Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/apk/uc;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
