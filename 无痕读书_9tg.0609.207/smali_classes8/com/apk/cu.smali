.class public Lcom/apk/cu;
.super Ljava/lang/Object;
.source "BarParams.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public abstract:I

.field public break:Lcom/apk/bu;

.field public case:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public catch:Z

.field public class:Z

.field public const:Z

.field public continue:Z

.field public default:Z

.field public do:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public else:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public extends:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final:Z

.field public finally:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public for:I

.field public goto:Z

.field public if:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public implements:Lcom/apk/nu;

.field public import:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public interface:Z

.field public native:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public new:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public package:Z

.field public private:Z

.field public protected:Lcom/apk/ou;

.field public public:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public return:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public static:Z

.field public strictfp:Z

.field public super:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public switch:Landroid/view/View;

.field public this:Z

.field public throw:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public throws:Landroid/view/View;

.field public transient:Lcom/apk/pu;

.field public try:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public volatile:Z

.field public while:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/cu;->do:I

    const/high16 v1, -0x1000000

    .line 3
    iput v1, p0, Lcom/apk/cu;->if:I

    .line 4
    iput v1, p0, Lcom/apk/cu;->for:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/apk/cu;->new:F

    .line 6
    iput v2, p0, Lcom/apk/cu;->try:F

    .line 7
    iput v2, p0, Lcom/apk/cu;->case:F

    .line 8
    iput v2, p0, Lcom/apk/cu;->else:F

    .line 9
    iput-boolean v0, p0, Lcom/apk/cu;->goto:Z

    .line 10
    iput-boolean v0, p0, Lcom/apk/cu;->this:Z

    .line 11
    sget-object v3, Lcom/apk/bu;->new:Lcom/apk/bu;

    iput-object v3, p0, Lcom/apk/cu;->break:Lcom/apk/bu;

    .line 12
    iput-boolean v0, p0, Lcom/apk/cu;->catch:Z

    .line 13
    iput-boolean v0, p0, Lcom/apk/cu;->class:Z

    .line 14
    iput-boolean v0, p0, Lcom/apk/cu;->const:Z

    .line 15
    iput-boolean v0, p0, Lcom/apk/cu;->final:Z

    .line 16
    iput v2, p0, Lcom/apk/cu;->super:F

    .line 17
    iput v2, p0, Lcom/apk/cu;->throw:F

    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lcom/apk/cu;->while:Z

    .line 19
    iput v1, p0, Lcom/apk/cu;->import:I

    .line 20
    iput v1, p0, Lcom/apk/cu;->native:I

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/apk/cu;->public:Ljava/util/Map;

    .line 22
    iput v2, p0, Lcom/apk/cu;->return:F

    .line 23
    iput-boolean v0, p0, Lcom/apk/cu;->static:Z

    .line 24
    iput-boolean v3, p0, Lcom/apk/cu;->default:Z

    .line 25
    iput-boolean v0, p0, Lcom/apk/cu;->package:Z

    .line 26
    iput-boolean v0, p0, Lcom/apk/cu;->private:Z

    const/16 v0, 0x12

    .line 27
    iput v0, p0, Lcom/apk/cu;->abstract:I

    .line 28
    iput-boolean v3, p0, Lcom/apk/cu;->continue:Z

    .line 29
    iput-boolean v3, p0, Lcom/apk/cu;->strictfp:Z

    .line 30
    iput-boolean v3, p0, Lcom/apk/cu;->volatile:Z

    .line 31
    iput-boolean v3, p0, Lcom/apk/cu;->interface:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/cu;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
