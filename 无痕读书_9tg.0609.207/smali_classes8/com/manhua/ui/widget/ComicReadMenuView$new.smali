.class public Lcom/manhua/ui/widget/ComicReadMenuView$new;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/ComicReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$new;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputConntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$new;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/v0;->const()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object p1, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-static {p1}, Lcom/apk/ze;->M(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v0, v0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/apk/f00;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cartoon"

    move-object v0, v1

    move-object v1, v4

    move-object v4, p1

    move-object v5, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->addBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_2
    :goto_0
    return-void
.end method
