.class public Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/mapplog_dr/VivoIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdentifierListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;


# direct methods
.method public constructor <init>(Lcom/bytedance/mapplog_dr/VivoIdentifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/mapplog_dr/VivoIdentifier;Lcom/bytedance/mapplog_dr/VivoIdentifier$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;-><init>(Lcom/bytedance/mapplog_dr/VivoIdentifier;)V

    return-void
.end method


# virtual methods
.method public OnSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    return-void
.end method

.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 3

    const-string v0, "Oaid#"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OaidMiit#OnSupport isSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", supplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;

    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->access$100(Lcom/bytedance/mapplog_dr/VivoIdentifier;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;

    invoke-static {p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->access$200(Lcom/bytedance/mapplog_dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object p2, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->access$302(Lcom/bytedance/mapplog_dr/VivoIdentifier;Z)Z

    .line 5
    iget-object p2, p0, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->this$0:Lcom/bytedance/mapplog_dr/VivoIdentifier;

    invoke-static {p2}, Lcom/bytedance/mapplog_dr/VivoIdentifier;->access$200(Lcom/bytedance/mapplog_dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    const-string p2, ""

    .line 7
    invoke-static {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 3

    const-string v0, "Oaid#"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OaidMiit#OnSupport supplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/mapplog_dr/VivoIdentifier$IdentifierListener;->OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 4
    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
