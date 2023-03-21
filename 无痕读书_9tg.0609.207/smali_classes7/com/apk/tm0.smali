.class public Lcom/apk/tm0;
.super Lcom/apk/jm0;
.source "ContentNode.java"

# interfaces
.implements Lcom/apk/km0;


# instance fields
.field public final for:Z

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/tm0;->if:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/apk/on0;->if(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/tm0;->for:Z

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/tm0;->if:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/tm0;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
