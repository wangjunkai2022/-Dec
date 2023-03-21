.class public final Lcom/apk/fe0;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lcom/apk/be0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/be0<",
        "Lcom/apk/xd0;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/CharSequence;

.field public final for:I

.field public final if:I

.field public final new:Lcom/apk/jd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/jd0<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lcom/apk/jc0<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILcom/apk/jd0;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/jd0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcom/apk/jd0<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/apk/jc0<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/apk/fe0;->if:I

    iput p3, p0, Lcom/apk/fe0;->for:I

    iput-object p4, p0, Lcom/apk/fe0;->new:Lcom/apk/jd0;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/apk/xd0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/fe0$do;

    invoke-direct {v0, p0}, Lcom/apk/fe0$do;-><init>(Lcom/apk/fe0;)V

    return-object v0
.end method
