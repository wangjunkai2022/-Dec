.class public Lcom/apk/n50;
.super Landroid/os/CountDownTimer;
.source "CsjProviderSplash.java"


# instance fields
.field public final synthetic do:Lcom/apk/o50;

.field public final synthetic for:Lcom/apk/a70;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/apk/l50;


# direct methods
.method public constructor <init>(Lcom/apk/l50;JJLcom/apk/o50;Ljava/lang/String;Lcom/apk/a70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n50;->new:Lcom/apk/l50;

    iput-object p6, p0, Lcom/apk/n50;->do:Lcom/apk/o50;

    iput-object p7, p0, Lcom/apk/n50;->if:Ljava/lang/String;

    iput-object p8, p0, Lcom/apk/n50;->for:Lcom/apk/a70;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/n50;->new:Lcom/apk/l50;

    .line 2
    iget-boolean v1, v0, Lcom/apk/f70;->for:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/n50;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/n50;->for:Lcom/apk/a70;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 1
    iget-object p2, p0, Lcom/apk/n50;->do:Lcom/apk/o50;

    .line 2
    iget-object p2, p2, Lcom/apk/o50;->do:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
