.class public Lcom/apk/ca;
.super Ljava/lang/Object;
.source "PaintManager.java"


# static fields
.field public static break:Lcom/apk/ca;


# instance fields
.field public case:I

.field public final do:Landroid/graphics/Paint;

.field public else:F

.field public final for:Landroid/graphics/Paint;

.field public goto:F

.field public final if:Landroid/graphics/Paint;

.field public new:I

.field public final this:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public try:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/apk/ca;->this:Lcom/apk/gg;

    .line 3
    invoke-static {}, Lcom/apk/g2;->break()I

    move-result v0

    iput v0, p0, Lcom/apk/ca;->new:I

    .line 4
    invoke-static {}, Lcom/apk/g2;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apk/eg;->break(F)F

    move-result v0

    .line 5
    iput v0, p0, Lcom/apk/ca;->try:F

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apk/ca;->new:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    iget-object v0, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apk/ca;->case:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iget-object v0, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    iget-object v0, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    const/high16 v2, 0x41e40000    # 28.5f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget-object v0, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apk/ca;->case:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "refresh_read_font_url"

    const-string v2, "default_font_url"

    .line 18
    invoke-static {v0, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url = ?"

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    .line 19
    invoke-static {v2}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/NewReadFont;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/ca;->for(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static do()Lcom/apk/ca;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ca;->break:Lcom/apk/ca;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/ca;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/ca;->break:Lcom/apk/ca;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/ca;

    invoke-direct {v1}, Lcom/apk/ca;-><init>()V

    sput-object v1, Lcom/apk/ca;->break:Lcom/apk/ca;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/ca;->break:Lcom/apk/ca;

    return-object v0
.end method


# virtual methods
.method public for(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/apk/goto;->volatile(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "default_font_url"

    const-string v2, "refresh_read_font_url"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v0, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    iget-object p1, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    iget-object p1, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 9
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    iget-object p1, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    iget-object p1, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method public if(Ljava/lang/String;)F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ca;->this:Lcom/apk/gg;

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/ca;->this:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public new()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/g2;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apk/eg;->break(F)F

    move-result v0

    .line 2
    iput v0, p0, Lcom/apk/ca;->try:F

    return-void
.end method

.method public try(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/ca;->case:I

    .line 2
    iget-object v0, p0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/ca;->if:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apk/ca;->case:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcom/apk/ca;->for:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apk/ca;->case:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
