.class public Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;
.super Ljava/lang/Object;
.source "BarrageControlPopWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;->dismiss()V

    :cond_0
    return-void
.end method
