.class public Lcom/biquge/ebook/app/bean/NewShareDisBean;
.super Ljava/lang/Object;
.source "NewShareDisBean.java"


# instance fields
.field public ad_pos_name:Ljava/lang/String;

.field public after_fir_tips:Ljava/lang/String;

.field public base_by:Ljava/lang/String;

.field public copy_tips2:Ljava/lang/String;

.field public fir_spgg:I

.field public fir_tips:Ljava/lang/String;

.field public is_tab_show:Z

.field public landing_page:Ljava/lang/String;

.field public next_noad_days:I

.field public next_spgg:I

.field public onlyCheckTime:Z

.field public over_tips:Ljava/lang/String;

.field public tab_name:Ljava/lang/String;

.field public tg_tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show:Z

    return-void
.end method


# virtual methods
.method public getAd_pos_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->ad_pos_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAfter_fir_tips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->after_fir_tips:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBase_by()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->base_by:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCopy_tips2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->copy_tips2:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFir_spgg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->fir_spgg:I

    return v0
.end method

.method public getFir_tips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->fir_tips:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLanding_page()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->landing_page:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNext_noad_days()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->next_noad_days:I

    return v0
.end method

.method public getNext_spgg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->next_spgg:I

    return v0
.end method

.method public getOver_tips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->over_tips:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTab_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->tab_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTg_tips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->tg_tips:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isOnlyCheckTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->onlyCheckTime:Z

    return v0
.end method

.method public is_tab_show()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show:Z

    return v0
.end method

.method public setAd_pos_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->ad_pos_name:Ljava/lang/String;

    return-void
.end method

.method public setAfter_fir_tips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->after_fir_tips:Ljava/lang/String;

    return-void
.end method

.method public setBase_by(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->base_by:Ljava/lang/String;

    return-void
.end method

.method public setCopy_tips2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->copy_tips2:Ljava/lang/String;

    return-void
.end method

.method public setFir_spgg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->fir_spgg:I

    return-void
.end method

.method public setFir_tips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->fir_tips:Ljava/lang/String;

    return-void
.end method

.method public setIs_tab_show(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show:Z

    return-void
.end method

.method public setLanding_page(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->landing_page:Ljava/lang/String;

    return-void
.end method

.method public setNext_noad_days(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->next_noad_days:I

    return-void
.end method

.method public setNext_spgg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->next_spgg:I

    return-void
.end method

.method public setOnlyCheckTime(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->onlyCheckTime:Z

    return-void
.end method

.method public setOver_tips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->over_tips:Ljava/lang/String;

    return-void
.end method

.method public setTab_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->tab_name:Ljava/lang/String;

    return-void
.end method

.method public setTg_tips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewShareDisBean;->tg_tips:Ljava/lang/String;

    return-void
.end method
