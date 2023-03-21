.class public abstract Lcom/apk/xq;
.super Ljava/lang/Object;
.source "BaseRequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apk/xq<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:Lcom/apk/kj;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public const:Z

.field public default:Z

.field public do:I

.field public else:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public extends:Z

.field public final:Z

.field public for:Lcom/apk/uk;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public goto:I

.field public if:F

.field public import:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/qj<",
            "*>;>;"
        }
    .end annotation
.end field

.field public native:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public new:Lcom/apk/ni;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public public:Z

.field public return:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static:Z

.field public super:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public switch:Z

.field public this:Z

.field public throw:I

.field public throws:Z

.field public try:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public while:Lcom/apk/mj;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/apk/xq;->if:F

    .line 3
    sget-object v0, Lcom/apk/uk;->for:Lcom/apk/uk;

    iput-object v0, p0, Lcom/apk/xq;->for:Lcom/apk/uk;

    .line 4
    sget-object v0, Lcom/apk/ni;->for:Lcom/apk/ni;

    iput-object v0, p0, Lcom/apk/xq;->new:Lcom/apk/ni;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/apk/xq;->this:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/apk/xq;->break:I

    .line 7
    iput v1, p0, Lcom/apk/xq;->catch:I

    .line 8
    sget-object v1, Lcom/apk/ur;->if:Lcom/apk/ur;

    .line 9
    iput-object v1, p0, Lcom/apk/xq;->class:Lcom/apk/kj;

    .line 10
    iput-boolean v0, p0, Lcom/apk/xq;->final:Z

    .line 11
    new-instance v1, Lcom/apk/mj;

    invoke-direct {v1}, Lcom/apk/mj;-><init>()V

    iput-object v1, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    .line 12
    new-instance v1, Lcom/apk/xr;

    invoke-direct {v1}, Lcom/apk/xr;-><init>()V

    iput-object v1, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    .line 13
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/apk/xq;->native:Ljava/lang/Class;

    .line 14
    iput-boolean v0, p0, Lcom/apk/xq;->default:Z

    return-void
.end method

.method public static const(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract(Z)Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->abstract(Z)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/apk/xq;->extends:Z

    .line 4
    iget p1, p0, Lcom/apk/xq;->do:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 5
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public case(Ljava/lang/Class;)Lcom/apk/xq;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->case(Ljava/lang/Class;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/apk/xq;->native:Ljava/lang/Class;

    .line 5
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public catch(I)Lcom/apk/xq;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/apk/xq;->case:I

    .line 4
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/apk/xq;->do:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 6
    iput p1, p0, Lcom/apk/xq;->do:I

    .line 7
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public class(Lcom/apk/ej;)Lcom/apk/xq;
    .locals 2
    .param p1    # Lcom/apk/ej;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ej;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/apk/eo;->case:Lcom/apk/lj;

    invoke-virtual {p0, v0, p1}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object v0

    sget-object v1, Lcom/apk/np;->do:Lcom/apk/lj;

    invoke-virtual {v0, v1, p1}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    return-object v0
.end method

.method public default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;
    .locals 1
    .param p1    # Lcom/apk/lj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/lj<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    .line 6
    iget-object v0, v0, Lcom/apk/mj;->if:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public do(Lcom/apk/xq;)Lcom/apk/xq;
    .locals 4
    .param p1    # Lcom/apk/xq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/xq<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->do(Lcom/apk/xq;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lcom/apk/xq;->do:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lcom/apk/xq;->if:F

    iput v0, p0, Lcom/apk/xq;->if:F

    .line 5
    :cond_1
    iget v0, p1, Lcom/apk/xq;->do:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lcom/apk/xq;->switch:Z

    iput-boolean v0, p0, Lcom/apk/xq;->switch:Z

    .line 7
    :cond_2
    iget v0, p1, Lcom/apk/xq;->do:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lcom/apk/xq;->extends:Z

    iput-boolean v0, p0, Lcom/apk/xq;->extends:Z

    .line 9
    :cond_3
    iget v0, p1, Lcom/apk/xq;->do:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lcom/apk/xq;->for:Lcom/apk/uk;

    iput-object v0, p0, Lcom/apk/xq;->for:Lcom/apk/uk;

    .line 11
    :cond_4
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lcom/apk/xq;->new:Lcom/apk/ni;

    iput-object v0, p0, Lcom/apk/xq;->new:Lcom/apk/ni;

    .line 13
    :cond_5
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lcom/apk/xq;->case:I

    .line 16
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 17
    :cond_6
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lcom/apk/xq;->case:I

    iput v0, p0, Lcom/apk/xq;->case:I

    .line 19
    iput-object v2, p0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 21
    :cond_7
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lcom/apk/xq;->goto:I

    .line 24
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 25
    :cond_8
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lcom/apk/xq;->goto:I

    iput v0, p0, Lcom/apk/xq;->goto:I

    .line 27
    iput-object v2, p0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 29
    :cond_9
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lcom/apk/xq;->this:Z

    iput-boolean v0, p0, Lcom/apk/xq;->this:Z

    .line 31
    :cond_a
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lcom/apk/xq;->catch:I

    iput v0, p0, Lcom/apk/xq;->catch:I

    .line 33
    iget v0, p1, Lcom/apk/xq;->break:I

    iput v0, p0, Lcom/apk/xq;->break:I

    .line 34
    :cond_b
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lcom/apk/xq;->class:Lcom/apk/kj;

    iput-object v0, p0, Lcom/apk/xq;->class:Lcom/apk/kj;

    .line 36
    :cond_c
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lcom/apk/xq;->native:Ljava/lang/Class;

    iput-object v0, p0, Lcom/apk/xq;->native:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lcom/apk/xq;->throw:I

    .line 41
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 42
    :cond_e
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lcom/apk/xq;->throw:I

    iput v0, p0, Lcom/apk/xq;->throw:I

    .line 44
    iput-object v2, p0, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 46
    :cond_f
    iget v0, p1, Lcom/apk/xq;->do:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lcom/apk/xq;->do:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lcom/apk/xq;->final:Z

    iput-boolean v0, p0, Lcom/apk/xq;->final:Z

    .line 50
    :cond_11
    iget v0, p1, Lcom/apk/xq;->do:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lcom/apk/xq;->const:Z

    iput-boolean v0, p0, Lcom/apk/xq;->const:Z

    .line 52
    :cond_12
    iget v0, p1, Lcom/apk/xq;->do:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    iget-object v2, p1, Lcom/apk/xq;->import:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lcom/apk/xq;->default:Z

    iput-boolean v0, p0, Lcom/apk/xq;->default:Z

    .line 55
    :cond_13
    iget v0, p1, Lcom/apk/xq;->do:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lcom/apk/xq;->throws:Z

    iput-boolean v0, p0, Lcom/apk/xq;->throws:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lcom/apk/xq;->final:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lcom/apk/xq;->do:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 60
    iput-boolean v1, p0, Lcom/apk/xq;->const:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/apk/xq;->do:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/apk/xq;->default:Z

    .line 63
    :cond_15
    iget v0, p0, Lcom/apk/xq;->do:I

    iget v1, p1, Lcom/apk/xq;->do:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/apk/xq;->do:I

    .line 64
    iget-object v0, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    iget-object p1, p1, Lcom/apk/xq;->while:Lcom/apk/mj;

    invoke-virtual {v0, p1}, Lcom/apk/mj;->new(Lcom/apk/mj;)V

    .line 65
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public else(Lcom/apk/uk;)Lcom/apk/xq;
    .locals 1
    .param p1    # Lcom/apk/uk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/uk;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/apk/xq;->for:Lcom/apk/uk;

    .line 5
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/apk/xq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/xq;

    .line 3
    iget v0, p1, Lcom/apk/xq;->if:F

    iget v2, p0, Lcom/apk/xq;->if:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apk/xq;->case:I

    iget v2, p1, Lcom/apk/xq;->case:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apk/xq;->goto:I

    iget v2, p1, Lcom/apk/xq;->goto:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apk/xq;->throw:I

    iget v2, p1, Lcom/apk/xq;->throw:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apk/xq;->this:Z

    iget-boolean v2, p1, Lcom/apk/xq;->this:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/apk/xq;->break:I

    iget v2, p1, Lcom/apk/xq;->break:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/apk/xq;->catch:I

    iget v2, p1, Lcom/apk/xq;->catch:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/apk/xq;->const:Z

    iget-boolean v2, p1, Lcom/apk/xq;->const:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/apk/xq;->final:Z

    iget-boolean v2, p1, Lcom/apk/xq;->final:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/apk/xq;->switch:Z

    iget-boolean v2, p1, Lcom/apk/xq;->switch:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/apk/xq;->throws:Z

    iget-boolean v2, p1, Lcom/apk/xq;->throws:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->for:Lcom/apk/uk;

    iget-object v2, p1, Lcom/apk/xq;->for:Lcom/apk/uk;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->new:Lcom/apk/ni;

    iget-object v2, p1, Lcom/apk/xq;->new:Lcom/apk/ni;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    iget-object v2, p1, Lcom/apk/xq;->while:Lcom/apk/mj;

    .line 8
    invoke-virtual {v0, v2}, Lcom/apk/mj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    iget-object v2, p1, Lcom/apk/xq;->import:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->native:Ljava/lang/Class;

    iget-object v2, p1, Lcom/apk/xq;->native:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->class:Lcom/apk/kj;

    iget-object v2, p1, Lcom/apk/xq;->class:Lcom/apk/kj;

    .line 11
    invoke-static {v0, v2}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public extends(Lcom/apk/kj;)Lcom/apk/xq;
    .locals 1
    .param p1    # Lcom/apk/kj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/kj;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/apk/xq;->class:Lcom/apk/kj;

    .line 5
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public final()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/xq;->public:Z

    return-object p0
.end method

.method public finally(Z)Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lcom/apk/xq;->this:Z

    .line 4
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 5
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public goto()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/np;->if:Lcom/apk/lj;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/xq;->if:F

    invoke-static {v0}, Lcom/apk/gs;->goto(F)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/apk/xq;->case:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/apk/xq;->goto:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/apk/xq;->throw:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/apk/xq;->this:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/apk/xq;->break:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/apk/xq;->catch:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 11
    iget-boolean v1, p0, Lcom/apk/xq;->const:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 12
    iget-boolean v1, p0, Lcom/apk/xq;->final:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Lcom/apk/xq;->switch:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lcom/apk/xq;->throws:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/apk/xq;->for:Lcom/apk/uk;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/apk/xq;->new:Lcom/apk/ni;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/apk/xq;->native:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/apk/xq;->class:Lcom/apk/kj;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/apk/gs;->break(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public if()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->public:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/xq;->static:Z

    .line 4
    invoke-virtual {p0}, Lcom/apk/xq;->final()Lcom/apk/xq;

    move-result-object v0

    return-object v0
.end method

.method public import()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/co;->do:Lcom/apk/co;

    new-instance v1, Lcom/apk/io;

    invoke-direct {v1}, Lcom/apk/io;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/apk/xq;->native(Lcom/apk/co;Lcom/apk/qj;)Lcom/apk/xq;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/xq;->default:Z

    return-object v0
.end method

.method public final native(Lcom/apk/co;Lcom/apk/qj;)Lcom/apk/xq;
    .locals 1
    .param p1    # Lcom/apk/co;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/qj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/co;",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apk/xq;->native(Lcom/apk/co;Lcom/apk/qj;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/xq;->this(Lcom/apk/co;)Lcom/apk/xq;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/apk/xq;->package(Lcom/apk/qj;Z)Lcom/apk/xq;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/apk/xq;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/xq;

    .line 2
    new-instance v1, Lcom/apk/mj;

    invoke-direct {v1}, Lcom/apk/mj;-><init>()V

    iput-object v1, v0, Lcom/apk/xq;->while:Lcom/apk/mj;

    .line 3
    iget-object v2, p0, Lcom/apk/xq;->while:Lcom/apk/mj;

    invoke-virtual {v1, v2}, Lcom/apk/mj;->new(Lcom/apk/mj;)V

    .line 4
    new-instance v1, Lcom/apk/xr;

    invoke-direct {v1}, Lcom/apk/xr;-><init>()V

    iput-object v1, v0, Lcom/apk/xq;->import:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/apk/xq;->public:Z

    .line 7
    iput-boolean v1, v0, Lcom/apk/xq;->static:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public package(Lcom/apk/qj;Z)Lcom/apk/xq;
    .locals 2
    .param p1    # Lcom/apk/qj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apk/xq;->package(Lcom/apk/qj;Z)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/go;

    invoke-direct {v0, p1, p2}, Lcom/apk/go;-><init>(Lcom/apk/qj;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/apk/xq;->private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/apk/xq;->private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/apk/xq;->private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;

    .line 7
    const-class v0, Lcom/apk/hp;

    new-instance v1, Lcom/apk/kp;

    invoke-direct {v1, p1}, Lcom/apk/kp;-><init>(Lcom/apk/qj;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/apk/xq;->private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;

    .line 8
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/qj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/apk/qj<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/xq;->private(Ljava/lang/Class;Lcom/apk/qj;Z)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/apk/xq;->import:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/apk/xq;->do:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/apk/xq;->final:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/apk/xq;->do:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/apk/xq;->default:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lcom/apk/xq;->do:I

    .line 11
    iput-boolean p2, p0, Lcom/apk/xq;->const:Z

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public public(I)Lcom/apk/xq;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/apk/xq;->return(II)Lcom/apk/xq;

    move-result-object p1

    return-object p1
.end method

.method public return(II)Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apk/xq;->return(II)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/apk/xq;->catch:I

    .line 4
    iput p2, p0, Lcom/apk/xq;->break:I

    .line 5
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public static(I)Lcom/apk/xq;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/apk/xq;->goto:I

    .line 4
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/apk/xq;->do:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Lcom/apk/xq;->do:I

    .line 7
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public super()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/co;->for:Lcom/apk/co;

    new-instance v1, Lcom/apk/zn;

    invoke-direct {v1}, Lcom/apk/zn;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/apk/xq;->native(Lcom/apk/co;Lcom/apk/qj;)Lcom/apk/xq;

    move-result-object v0

    return-object v0
.end method

.method public switch(Lcom/apk/ni;)Lcom/apk/xq;
    .locals 1
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/xq;->switch(Lcom/apk/ni;)Lcom/apk/xq;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/apk/xq;->new:Lcom/apk/ni;

    .line 5
    iget p1, p0, Lcom/apk/xq;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/apk/xq;->do:I

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq;->throws()Lcom/apk/xq;

    return-object p0
.end method

.method public this(Lcom/apk/co;)Lcom/apk/xq;
    .locals 2
    .param p1    # Lcom/apk/co;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/co;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/co;->case:Lcom/apk/lj;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object p1

    return-object p1
.end method

.method public final throws()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/xq;->public:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public while()Lcom/apk/xq;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/co;->if:Lcom/apk/co;

    new-instance v1, Lcom/apk/ao;

    invoke-direct {v1}, Lcom/apk/ao;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/apk/xq;->native(Lcom/apk/co;Lcom/apk/qj;)Lcom/apk/xq;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/xq;->default:Z

    return-object v0
.end method
