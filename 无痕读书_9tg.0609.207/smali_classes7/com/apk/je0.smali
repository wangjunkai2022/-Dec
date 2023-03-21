.class public final Lcom/apk/je0;
.super Lcom/apk/od0;
.source "Strings.kt"

# interfaces
.implements Lcom/apk/jd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/od0;",
        "Lcom/apk/jd0<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lcom/apk/jc0<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:[C

.field public final synthetic if:Z


# direct methods
.method public constructor <init>([CZ)V
    .locals 0

    iput-object p1, p0, Lcom/apk/je0;->do:[C

    iput-boolean p2, p0, Lcom/apk/je0;->if:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/je0;->do:[C

    iget-boolean v1, p0, Lcom/apk/je0;->if:Z

    invoke-static {p1, v0, p2, v1}, Lcom/apk/ie0;->catch(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/apk/jc0;

    invoke-direct {v0, p1, p2}, Lcom/apk/jc0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
