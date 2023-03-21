.class public Lcom/apk/ra0;
.super Ljava/lang/Object;
.source "SmartKeyboardManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic do:Lcom/apk/za0;


# direct methods
.method public constructor <init>(Lcom/apk/za0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ra0;->do:Lcom/apk/za0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p5, p9}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/apk/ra0;->do:Lcom/apk/za0;

    .line 3
    iget-object p1, p1, Lcom/apk/za0;->new:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apk/ra0;->do:Lcom/apk/za0;

    .line 5
    iget-object p1, p1, Lcom/apk/za0;->case:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/apk/ra0;->do:Lcom/apk/za0;

    .line 8
    iget-object p1, p1, Lcom/apk/za0;->this:Lcom/apk/za0$if;

    if-eqz p1, :cond_1

    .line 9
    check-cast p1, Lcom/apk/pb0;

    .line 10
    iget-object p2, p1, Lcom/apk/pb0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 11
    iget-object p2, p2, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p1, Lcom/apk/pb0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 14
    iget-object p2, p2, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    .line 15
    sget p4, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_input_msg_txt:I

    invoke-static {p4}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 16
    :cond_0
    iget-object p1, p1, Lcom/apk/pb0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 17
    iput-object p3, p1, Lcom/tr/comment/sdk/view/TrCommentView;->extends:Lcom/tr/comment/sdk/bean/TrCommentBean;

    :cond_1
    sub-int/2addr p9, p5

    if-nez p9, :cond_2

    return-void

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/apk/ra0;->do:Lcom/apk/za0;

    .line 19
    iget-object p1, p1, Lcom/apk/za0;->this:Lcom/apk/za0$if;

    if-eqz p1, :cond_4

    .line 20
    check-cast p1, Lcom/apk/pb0;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    throw p3

    :cond_4
    :goto_0
    return-void
.end method
