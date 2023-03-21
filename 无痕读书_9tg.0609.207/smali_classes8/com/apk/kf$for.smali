.class public Lcom/apk/kf$for;
.super Lcom/apk/sy;
.source "DownloadFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/apk/sy;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/apk/kf$for;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/hy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apk/kf;->do(Ljava/lang/String;Lcom/apk/hy;)V

    return-void
.end method

.method public for(Lcom/apk/hy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apk/kf;->do(Ljava/lang/String;Lcom/apk/hy;)V

    return-void
.end method

.method public if(Ljava/lang/Object;Lcom/apk/hy;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    iget-object p2, p0, Lcom/apk/kf$for;->if:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/lf;

    invoke-direct {v2, p1, p2, v0}, Lcom/apk/lf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public new(Lcom/apk/hy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apk/kf;->do(Ljava/lang/String;Lcom/apk/hy;)V

    return-void
.end method

.method public try(Lcom/apk/hy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apk/kf;->do(Ljava/lang/String;Lcom/apk/hy;)V

    return-void
.end method
