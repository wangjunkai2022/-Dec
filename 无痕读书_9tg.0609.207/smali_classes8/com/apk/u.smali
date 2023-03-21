.class public Lcom/apk/u;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final case:Lcom/apk/sm;

.field public static final do:Lcom/apk/sm;

.field public static else:I

.field public static final for:I

.field public static final goto:Lcom/apk/sm;

.field public static final if:Lcom/apk/sm;

.field public static final new:Lcom/apk/dr;

.field public static final try:Lcom/apk/sm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/u$try;

    invoke-direct {v0}, Lcom/apk/u$try;-><init>()V

    sput-object v0, Lcom/apk/u;->do:Lcom/apk/sm;

    .line 2
    new-instance v0, Lcom/apk/u$case;

    invoke-direct {v0}, Lcom/apk/u$case;-><init>()V

    sput-object v0, Lcom/apk/u;->if:Lcom/apk/sm;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 3
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    sput v0, Lcom/apk/u;->for:I

    .line 4
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    sget-object v1, Lcom/apk/uk;->if:Lcom/apk/uk;

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    const/high16 v1, -0x80000000

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/xq;->public(I)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    sput-object v0, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 7
    new-instance v0, Lcom/apk/u$catch;

    invoke-direct {v0}, Lcom/apk/u$catch;-><init>()V

    sput-object v0, Lcom/apk/u;->try:Lcom/apk/sm;

    .line 8
    new-instance v0, Lcom/apk/u$class;

    invoke-direct {v0}, Lcom/apk/u$class;-><init>()V

    sput-object v0, Lcom/apk/u;->case:Lcom/apk/sm;

    .line 9
    new-instance v0, Lcom/apk/u$if;

    invoke-direct {v0}, Lcom/apk/u$if;-><init>()V

    sput-object v0, Lcom/apk/u;->goto:Lcom/apk/sm;

    return-void
.end method

.method public static break(Ljava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/apk/pi;->b(Ljava/lang/String;)Lcom/apk/pi;

    move-result-object v0

    const v1, 0x7f080223

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    sget-object v1, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    new-instance v0, Lcom/apk/u$goto;

    invoke-direct {v0, p2, p1}, Lcom/apk/u$goto;-><init>(Lcom/apk/j1;Lcom/manhua/ui/widget/ComicImageLayout;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/apk/pi;->instanceof(Lcom/apk/cr;)Lcom/apk/pi;

    move-result-object p0

    .line 10
    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicImageLayout;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static case()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/p0;->break:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "URL_HOST_IMAGE_KEY"

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/p0;->break:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://imgapixs.apptuxing.com"

    .line 4
    sput-object v0, Lcom/apk/p0;->break:Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v0, Lcom/apk/p0;->break:Ljava/lang/String;

    return-object v0
.end method

.method public static catch(ZLjava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 3
    new-instance p0, Lcom/apk/b1;

    invoke-direct {p0}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/u$this;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/apk/u$this;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V

    invoke-virtual {p0, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/apk/u;->class(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V

    :goto_0
    return-void
.end method

.method public static class(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/apk/pi;->b(Ljava/lang/String;)Lcom/apk/pi;

    move-result-object v0

    sget-object v1, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    new-instance v0, Lcom/apk/u$break;

    invoke-direct {v0, p3, p2}, Lcom/apk/u$break;-><init>(Lcom/apk/j1;Lcom/manhua/ui/widget/barrage/BarrageView;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/apk/pi;->instanceof(Lcom/apk/cr;)Lcom/apk/pi;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static const(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/apk/pi;->b(Ljava/lang/String;)Lcom/apk/pi;

    move-result-object p0

    sget-object v0, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 7
    invoke-virtual {p0, v0}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p0

    new-instance v0, Lcom/apk/vr;

    invoke-direct {v0, p1}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 9
    iget-object p1, p0, Lcom/apk/pi;->package:Lcom/apk/qi;

    .line 10
    new-instance v0, Lcom/apk/mr;

    const/high16 v1, -0x80000000

    invoke-direct {v0, p1, v1, v1}, Lcom/apk/mr;-><init>(Lcom/apk/qi;II)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/apk/pi;->protected(Lcom/apk/pr;)Lcom/apk/pr;

    :cond_1
    :goto_0
    return-void
.end method

.method public static do(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/rm;

    sget-object v1, Lcom/apk/u;->goto:Lcom/apk/sm;

    invoke-direct {v0, p0, v1}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 2
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {v1}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/qi;->class()Lcom/apk/pi;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    sget-object v1, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 8
    invoke-virtual {p0}, Lcom/apk/pi;->d()Lcom/apk/yq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Lcom/apk/br;

    :try_start_1
    invoke-virtual {p0}, Lcom/apk/br;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static else(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/qi;->class()Lcom/apk/pi;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/apk/pi;->b(Ljava/lang/String;)Lcom/apk/pi;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 8
    invoke-virtual {p0}, Lcom/apk/pi;->d()Lcom/apk/yq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Lcom/apk/br;

    :try_start_1
    invoke-virtual {p0}, Lcom/apk/br;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/apk/u;->super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V

    return-void
.end method

.method public static for(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/qi;->class()Lcom/apk/pi;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/apk/pi;->b(Ljava/lang/String;)Lcom/apk/pi;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    sget-object v1, Lcom/apk/u;->new:Lcom/apk/dr;

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Lcom/apk/vr;

    invoke-direct {v1, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 9
    invoke-virtual {p0}, Lcom/apk/pi;->d()Lcom/apk/yq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Lcom/apk/br;

    :try_start_1
    invoke-virtual {p0}, Lcom/apk/br;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static if(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/apk/rm;

    sget-object v2, Lcom/apk/u;->if:Lcom/apk/sm;

    invoke-direct {v0, p0, v2}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 3
    :try_start_0
    sget-object v2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-static {v2}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object v2

    check-cast v2, Lcom/apk/pi;

    .line 7
    invoke-virtual {v2, v0}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object v0

    new-instance v2, Lcom/apk/vr;

    invoke-direct {v2, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 9
    invoke-virtual {p0}, Lcom/apk/pi;->d()Lcom/apk/yq;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Lcom/apk/br;

    :try_start_1
    invoke-virtual {p0}, Lcom/apk/br;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 11
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method public static import(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const v0, 0x7f080223

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/apk/u;->native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public static native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/rm;

    if-eqz p3, :cond_1

    sget-object p3, Lcom/apk/u;->try:Lcom/apk/sm;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/apk/u;->case:Lcom/apk/sm;

    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 4
    sget-object p3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-static {p3}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object p3

    .line 7
    invoke-virtual {p3, v0}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object p3

    .line 8
    invoke-virtual {p3, p2}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p3

    check-cast p3, Lcom/apk/pi;

    .line 9
    invoke-virtual {p3, p2}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object p2

    check-cast p2, Lcom/apk/pi;

    .line 10
    invoke-virtual {p2}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object p2

    check-cast p2, Lcom/apk/pi;

    new-instance p3, Lcom/apk/qo;

    sget v0, Lcom/apk/u;->for:I

    invoke-direct {p3, v0}, Lcom/apk/qo;-><init>(I)V

    .line 11
    invoke-static {p3}, Lcom/apk/dr;->continue(Lcom/apk/qj;)Lcom/apk/dr;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p2

    new-instance p3, Lcom/apk/vr;

    invoke-direct {p3, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p2, p3}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 13
    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static new(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "123"

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/apk/p0;->this:Lcom/manhua/data/bean/ComicImageConifg;

    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicImageConifg;->getHostKeys()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    const-string v4, "BookImage/"

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_1
    move-object v4, v2

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v2

    .line 9
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicImageConifg;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    const-string v0, "((http|ftp|https)://)(([a-zA-Z0-9._-]+)|([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}))(([a-zA-Z]{2,6})|(:[0-9]{1,4})?)"

    .line 16
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p0

    .line 18
    :cond_5
    invoke-static {v2, v1, p0}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static public(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    const v0, 0x7f080223

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    return-void
.end method

.method public static return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/rm;

    if-eqz p4, :cond_1

    sget-object p4, Lcom/apk/u;->do:Lcom/apk/sm;

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/apk/u;->if:Lcom/apk/sm;

    :goto_0
    invoke-direct {v0, p0, p4}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 4
    sget-object p4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-static {p4}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p4

    .line 6
    invoke-virtual {p4}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object p4

    .line 7
    invoke-virtual {p4, p2}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p4

    check-cast p4, Lcom/apk/pi;

    .line 8
    invoke-virtual {p4, p2}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object p2

    check-cast p2, Lcom/apk/pi;

    new-instance p4, Lcom/apk/qo;

    sget v1, Lcom/apk/u;->for:I

    invoke-direct {p4, v1}, Lcom/apk/qo;-><init>(I)V

    .line 9
    invoke-static {p4}, Lcom/apk/dr;->continue(Lcom/apk/qj;)Lcom/apk/dr;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v0}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object p2

    new-instance p4, Lcom/apk/vr;

    invoke-direct {p4, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2, p4}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    new-instance p2, Lcom/apk/u$new;

    invoke-direct {p2, p3}, Lcom/apk/u$new;-><init>(Lcom/apk/j1;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/apk/pi;->instanceof(Lcom/apk/cr;)Lcom/apk/pi;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static static(Ljava/io/File;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/apk/qi;->final(Ljava/io/File;)Lcom/apk/pi;

    move-result-object p0

    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    const v1, 0x7f08012b

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    invoke-virtual {v0}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p0

    new-instance v0, Lcom/apk/u$for;

    invoke-direct {v0, p1}, Lcom/apk/u$for;-><init>(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/pi;->protected(Lcom/apk/pr;)Lcom/apk/pr;

    :cond_1
    :goto_0
    return-void
.end method

.method public static super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/apk/rm;

    sget-object v1, Lcom/apk/u;->goto:Lcom/apk/sm;

    invoke-direct {v0, p0, v1}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 4
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-static {v1}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/apk/qi;->super(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p2

    check-cast p2, Lcom/apk/pi;

    .line 8
    sget-object v0, Lcom/apk/dr;->package:Lcom/apk/dr;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v0}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    invoke-virtual {v0}, Lcom/apk/xq;->if()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    sput-object v0, Lcom/apk/dr;->package:Lcom/apk/dr;

    .line 10
    :cond_2
    sget-object v0, Lcom/apk/dr;->package:Lcom/apk/dr;

    .line 11
    invoke-virtual {p2, v0}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p2

    new-instance v0, Lcom/apk/vr;

    invoke-direct {v0, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    new-instance p2, Lcom/apk/u$do;

    invoke-direct {p2, p3}, Lcom/apk/u$do;-><init>(Lcom/apk/j1;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/apk/pi;->instanceof(Lcom/apk/cr;)Lcom/apk/pi;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static switch(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/apk/u;->static(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static this(ZLjava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/apk/u;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 3
    new-instance p0, Lcom/apk/b1;

    invoke-direct {p0}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/u$else;

    invoke-direct {v0, p1, p2, p3}, Lcom/apk/u$else;-><init>(Ljava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V

    invoke-virtual {p0, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/apk/u;->break(Ljava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V

    :goto_0
    return-void
.end method

.method public static throw(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 2

    const v0, 0x7f080223

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, p2}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    return-void
.end method

.method public static throws(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {v0}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/pi;->synchronized(Ljava/io/File;)Lcom/apk/pi;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method

.method public static try(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "?"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/"

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/u;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/BookFiles/BookImages/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/u;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/apk/u;->case()Ljava/lang/String;

    move-result-object p1

    const-string v1, "((http|ftp|https)://)(([a-zA-Z0-9._-]+)|([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}))(([a-zA-Z]{2,6})|(:[0-9]{1,4})?)"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static while(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f080269

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/rm;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/apk/u;->do:Lcom/apk/sm;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/apk/u;->if:Lcom/apk/sm;

    :goto_0
    invoke-direct {v0, p0, p2}, Lcom/apk/rm;-><init>(Ljava/lang/String;Lcom/apk/sm;)V

    .line 4
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-static {p2}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v0}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v1}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p2

    check-cast p2, Lcom/apk/pi;

    new-instance v0, Lcom/apk/gc0;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1}, Lcom/apk/gc0;-><init>(II)V

    .line 9
    invoke-static {v0}, Lcom/apk/dr;->continue(Lcom/apk/qj;)Lcom/apk/dr;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p2

    new-instance v0, Lcom/apk/vr;

    invoke-direct {v0, p0}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p0

    check-cast p0, Lcom/apk/pi;

    .line 11
    invoke-virtual {p0, p1}, Lcom/apk/pi;->implements(Landroid/widget/ImageView;)Lcom/apk/qr;

    return-void
.end method
