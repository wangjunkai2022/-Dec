.class public abstract Lcom/apk/ph0;
.super Ljava/lang/Object;
.source "Task.kt"


# instance fields
.field public do:Lcom/apk/rh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final for:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public if:J

.field public final new:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ph0;->for:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/apk/ph0;->new:Z

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/apk/ph0;->if:J

    return-void
.end method


# virtual methods
.method public abstract do()J
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ph0;->for:Ljava/lang/String;

    return-object v0
.end method
