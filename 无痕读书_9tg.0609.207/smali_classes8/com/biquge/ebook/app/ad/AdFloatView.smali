.class public Lcom/biquge/ebook/app/ad/AdFloatView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AdFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ad/AdFloatView$for;
    }
.end annotation


# instance fields
.field public break:Lcom/biquge/ebook/app/bean/FloatAdBean;

.field public case:J

.field public catch:I

.field public final class:Lcom/apk/j1;

.field public final const:Lcom/apk/bg;

.field public do:Lorg/json/JSONObject;

.field public else:J

.field public for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/FloatAdBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Z

.field public new:Z

.field public this:I

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/ad/AdFloatView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ad/AdFloatView$do;-><init>(Lcom/biquge/ebook/app/ad/AdFloatView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->class:Lcom/apk/j1;

    .line 3
    new-instance p1, Lcom/biquge/ebook/app/ad/AdFloatView$if;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ad/AdFloatView$if;-><init>(Lcom/biquge/ebook/app/ad/AdFloatView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->const:Lcom/apk/bg;

    return-void
.end method


# virtual methods
.method public if(Lorg/json/JSONObject;ZLcom/biquge/ebook/app/ad/AdFloatView$for;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->do:Lorg/json/JSONObject;

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->if:Z

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p3, "list"

    .line 4
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/apk/tf;

    invoke-direct {p3}, Lcom/apk/tf;-><init>()V

    .line 6
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 7
    invoke-static {p1, p3}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->goto:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 10
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->new:Z

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->do:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->else:J

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->do:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/apk/finally;->const(Lorg/json/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->try:Z

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->new:Z

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    .line 14
    iget-wide v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->case:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->case:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->else:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->case:J

    .line 16
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->if:Z

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 18
    iget-object p3, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->goto:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->this:I

    iget-object p3, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->goto:Ljava/util/List;

    .line 19
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    rem-int/2addr p1, p3

    .line 20
    :goto_1
    iget-object p3, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->goto:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/FloatAdBean;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/FloatAdBean;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/FloatAdBean;->getFloaticon()Ljava/lang/String;

    move-result-object p3

    .line 23
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->break:Lcom/biquge/ebook/app/bean/FloatAdBean;

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

    if-eqz p1, :cond_3

    .line 25
    invoke-interface {p1}, Lcom/biquge/ebook/app/ad/AdFloatView$for;->do()V

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->class:Lcom/apk/j1;

    const/4 v0, 0x0

    .line 27
    invoke-static {p3, p0, v0, p1}, Lcom/apk/u;->super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V

    .line 28
    iget p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->this:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->this:I

    goto :goto_2

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->for:Lcom/biquge/ebook/app/ad/AdFloatView$for;

    if-eqz p1, :cond_5

    .line 30
    invoke-interface {p1}, Lcom/biquge/ebook/app/ad/AdFloatView$for;->onShow()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setSourceTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/ad/AdFloatView;->catch:I

    return-void
.end method
