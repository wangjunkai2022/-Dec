.class public Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;
.super Ljava/lang/Object;
.source "BarrageCommentsPopupView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p2}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$200(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/TextView;

    move-result-object p1

    const p2, -0x4c4c4d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/TextView;

    move-result-object p1

    const p2, -0xdcdcdd

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
