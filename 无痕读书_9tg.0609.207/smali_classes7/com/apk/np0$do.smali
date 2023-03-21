.class public Lcom/apk/np0$do;
.super Lcom/apk/np0;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/np0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final if:Lcom/apk/ep0;


# direct methods
.method public constructor <init>(Lcom/apk/hp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/np0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    .line 3
    new-instance v0, Lcom/apk/ep0;

    invoke-direct {v0, p1}, Lcom/apk/ep0;-><init>(Lcom/apk/hp0;)V

    iput-object v0, p0, Lcom/apk/np0$do;->if:Lcom/apk/ep0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/apk/jo0;->this()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p2, v0}, Lcom/apk/no0;->goto(I)Lcom/apk/no0;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/apk/jo0;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/apk/np0$do;->if:Lcom/apk/ep0;

    check-cast v1, Lcom/apk/jo0;

    invoke-virtual {v2, p2, v1}, Lcom/apk/ep0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Lcom/apk/jo0;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/apk/np0;->do:Lcom/apk/hp0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
