.class public Lcom/biquge/ebook/app/bean/FloatAdBean;
.super Ljava/lang/Object;
.source "FloatAdBean.java"


# instance fields
.field public action:Ljava/lang/String;

.field public floaticon:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->floaticon:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->action:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getFloaticon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->floaticon:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setFloaticon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->floaticon:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/FloatAdBean;->value:Ljava/lang/String;

    return-void
.end method
