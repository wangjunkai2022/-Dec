.class public Lorg/litepal/crud/model/AssociationsInfo;
.super Ljava/lang/Object;
.source "AssociationsInfo.java"


# instance fields
.field public associateOtherModelFromSelf:Ljava/lang/reflect/Field;

.field public associateSelfFromOtherModel:Ljava/lang/reflect/Field;

.field public associatedClassName:Ljava/lang/String;

.field public associationType:I

.field public classHoldsForeignKey:Ljava/lang/String;

.field public selfClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/litepal/crud/model/AssociationsInfo;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result p1

    iget v1, p0, Lorg/litepal/crud/model/AssociationsInfo;->associationType:I

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/litepal/crud/model/AssociationsInfo;->classHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getSelfClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/litepal/crud/model/AssociationsInfo;->selfClassName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/litepal/crud/model/AssociationsInfo;->associatedClassName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getSelfClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/litepal/crud/model/AssociationsInfo;->associatedClassName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->selfClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->associateOtherModelFromSelf:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->associateSelfFromOtherModel:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAssociatedClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->associatedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->associationType:I

    return v0
.end method

.method public getClassHoldsForeignKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->classHoldsForeignKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/model/AssociationsInfo;->selfClassName:Ljava/lang/String;

    return-object v0
.end method

.method public setAssociateOtherModelFromSelf(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->associateOtherModelFromSelf:Ljava/lang/reflect/Field;

    return-void
.end method

.method public setAssociateSelfFromOtherModel(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->associateSelfFromOtherModel:Ljava/lang/reflect/Field;

    return-void
.end method

.method public setAssociatedClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->associatedClassName:Ljava/lang/String;

    return-void
.end method

.method public setAssociationType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->associationType:I

    return-void
.end method

.method public setClassHoldsForeignKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->classHoldsForeignKey:Ljava/lang/String;

    return-void
.end method

.method public setSelfClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/model/AssociationsInfo;->selfClassName:Ljava/lang/String;

    return-void
.end method
