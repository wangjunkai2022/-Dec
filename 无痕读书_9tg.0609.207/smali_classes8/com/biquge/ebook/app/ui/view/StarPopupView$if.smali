.class public Lcom/biquge/ebook/app/ui/view/StarPopupView$if;
.super Lcom/apk/bg;
.source "StarPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/StarPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/StarPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901d5

    if-eq p1, v0, :cond_3

    const v0, 0x7f0901d7

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/StarPopupView;->do:Lcom/biquge/ebook/app/widget/StarBarView;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/StarBarView;->getStarMark()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    .line 9
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->case:Z

    const-string v2, "/BookAction.aspx"

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/apk/goto;->break(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_0
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/StarPopupView;->else:Lcom/apk/v3;

    if-eqz v0, :cond_4

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "action"

    const-string v3, "vote"

    .line 14
    invoke-static {v2, v3}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "score"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Lcom/apk/f4;

    invoke-direct {p1, v0}, Lcom/apk/f4;-><init>(Lcom/apk/v3;)V

    invoke-static {v1, v2, p1}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$if;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_4
    :goto_1
    return-void
.end method
