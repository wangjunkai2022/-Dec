.class public Lcom/apk/sm0;
.super Lcom/apk/jm0;
.source "CommentNode.java"

# interfaces
.implements Lcom/apk/km0;


# instance fields
.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/sm0;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "<!--"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/sm0;->if:Ljava/lang/String;

    const-string v2, "-->"

    invoke-static {v0, v1, v2}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
