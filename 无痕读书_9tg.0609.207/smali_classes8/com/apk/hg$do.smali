.class public Lcom/apk/hg$do;
.super Ljava/lang/Object;
.source "SystemBrightManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/hg;->do(Landroid/widget/SeekBar;Lcom/apk/n1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/n1;

.field public final synthetic if:Lcom/apk/hg;


# direct methods
.method public constructor <init>(Lcom/apk/hg;Lcom/apk/n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hg$do;->if:Lcom/apk/hg;

    iput-object p2, p0, Lcom/apk/hg$do;->do:Lcom/apk/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/hg$do;->if:Lcom/apk/hg;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/apk/hg;->else(IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/hg$do;->if:Lcom/apk/hg;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apk/hg;->else(IZ)V

    .line 2
    iget-object p1, p0, Lcom/apk/hg$do;->if:Lcom/apk/hg;

    invoke-virtual {p1}, Lcom/apk/hg;->if()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/hg$do;->if:Lcom/apk/hg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apk/hg;->case(Z)V

    .line 4
    iget-object p1, p0, Lcom/apk/hg$do;->do:Lcom/apk/n1;

    invoke-interface {p1}, Lcom/apk/n1;->do()V

    :cond_0
    return-void
.end method
