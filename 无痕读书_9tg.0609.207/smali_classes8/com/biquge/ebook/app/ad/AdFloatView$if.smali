.class public Lcom/biquge/ebook/app/ad/AdFloatView$if;
.super Lcom/apk/bg;
.source "AdFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ad/AdFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/AdFloatView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/AdFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ad/AdFloatView;->break:Lcom/biquge/ebook/app/bean/FloatAdBean;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/FloatAdBean;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ad/AdFloatView;->break:Lcom/biquge/ebook/app/bean/FloatAdBean;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/FloatAdBean;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URL_inner"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "URL_system"

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "gdt_cp"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/apk/switch;->try(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const-string v1, "gdt_kp"

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v1, "gdt"

    invoke-static {p1, v1, v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "swl_cp"

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/apk/switch;->try(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    const-string v1, "swl_kp"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v1, "swl"

    invoke-static {p1, v1, v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 20
    iget-boolean v0, p1, Lcom/biquge/ebook/app/ad/AdFloatView;->try:Z

    if-eqz v0, :cond_9

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ad/AdFloatView;->for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

    if-eqz p1, :cond_7

    .line 22
    invoke-interface {p1}, Lcom/biquge/ebook/app/ad/AdFloatView$for;->do()V

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView$if;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 24
    iget p1, p1, Lcom/biquge/ebook/app/ad/AdFloatView;->catch:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 25
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 26
    iput-object v1, p1, Lcom/apk/finally;->f:Lorg/json/JSONObject;

    goto :goto_1

    :cond_8
    if-ne p1, v2, :cond_9

    .line 27
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 28
    iput-object v1, p1, Lcom/apk/finally;->g:Lorg/json/JSONObject;

    :cond_9
    :goto_1
    return-void
.end method
