.class public Lcom/apk/in0;
.super Ljava/lang/Object;
.source "SpecialEntity.java"


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:Ljava/lang/String;

.field public final if:I

.field public new:Z

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/in0;->do:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/apk/in0;->if:I

    const-string p2, "&"

    const-string v0, ";"

    .line 4
    invoke-static {p2, p1, v0}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 5
    iput-object p3, p0, Lcom/apk/in0;->for:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/apk/in0;->for:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_1

    .line 7
    iget p1, p0, Lcom/apk/in0;->if:I

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/in0;->try:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/apk/in0;->try:Ljava/lang/String;

    .line 9
    :goto_1
    iput-boolean p4, p0, Lcom/apk/in0;->new:Z

    return-void
.end method
