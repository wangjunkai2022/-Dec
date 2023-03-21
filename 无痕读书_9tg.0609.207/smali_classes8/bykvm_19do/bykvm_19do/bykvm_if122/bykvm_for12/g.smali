.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;
.super Ljava/lang/Object;
.source "AdEventUploadResult.java"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->a:Z

    .line 3
    iput p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->b:I

    .line 4
    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->d:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AdEventUploadResult{mSuccess="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->c:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mIsDataError="

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
