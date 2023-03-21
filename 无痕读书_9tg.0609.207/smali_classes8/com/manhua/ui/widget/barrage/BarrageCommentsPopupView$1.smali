.class public Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;
.super Ljava/lang/Object;
.source "BarrageCommentsPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

.field public final synthetic val$views:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;[Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;->val$views:[Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    .line 2
    :goto_0
    :pswitch_5
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;->val$views:[Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$000(I[Landroid/widget/ImageView;)V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$200(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->access$100()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09051c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
