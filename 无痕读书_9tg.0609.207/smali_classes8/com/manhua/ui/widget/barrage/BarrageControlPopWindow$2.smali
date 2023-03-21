.class public Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;
.super Ljava/lang/Object;
.source "BarrageControlPopWindow.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->initView(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_BARRAGE_SWITCH_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;->open(Z)V

    :cond_0
    return-void
.end method
