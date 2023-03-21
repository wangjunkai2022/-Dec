package org.litepal.crud;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.litepal.crud.model.AssociationsInfo;
import org.litepal.util.DBUtility;
/* loaded from: classes7.dex */
public class Many2OneAnalyzer extends AssociationsAnalyzer {
    private void analyzeManySide(LitePalSupport litePalSupport, AssociationsInfo associationsInfo) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        LitePalSupport associatedModel = getAssociatedModel(litePalSupport, associationsInfo);
        if (associatedModel != null) {
            Collection<LitePalSupport> checkAssociatedModelCollection = checkAssociatedModelCollection(getReverseAssociatedModels(associatedModel, associationsInfo), associationsInfo.getAssociateSelfFromOtherModel());
            setReverseAssociatedModels(associatedModel, associationsInfo, checkAssociatedModelCollection);
            dealAssociatedModelOnManySide(checkAssociatedModelCollection, litePalSupport, associatedModel);
            return;
        }
        mightClearFKValue(litePalSupport, associationsInfo);
    }

    private void analyzeOneSide(LitePalSupport litePalSupport, AssociationsInfo associationsInfo) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Collection<LitePalSupport> associatedModels = getAssociatedModels(litePalSupport, associationsInfo);
        if (associatedModels != null && !associatedModels.isEmpty()) {
            for (LitePalSupport litePalSupport2 : associatedModels) {
                buildBidirectionalAssociations(litePalSupport, litePalSupport2, associationsInfo);
                dealAssociatedModelOnOneSide(litePalSupport, litePalSupport2);
            }
            return;
        }
        litePalSupport.addAssociatedTableNameToClearFK(DBUtility.getTableNameByClassName(associationsInfo.getAssociatedClassName()));
    }

    private void dealAssociatedModelOnManySide(Collection<LitePalSupport> collection, LitePalSupport litePalSupport, LitePalSupport litePalSupport2) {
        if (!collection.contains(litePalSupport)) {
            collection.add(litePalSupport);
        }
        if (litePalSupport2.isSaved()) {
            litePalSupport.addAssociatedModelWithoutFK(litePalSupport2.getTableName(), litePalSupport2.getBaseObjId());
        }
    }

    private void dealAssociatedModelOnOneSide(LitePalSupport litePalSupport, LitePalSupport litePalSupport2) {
        dealsAssociationsOnTheSideWithoutFK(litePalSupport, litePalSupport2);
    }

    public void analyze(LitePalSupport litePalSupport, AssociationsInfo associationsInfo) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (litePalSupport.getClassName().equals(associationsInfo.getClassHoldsForeignKey())) {
            analyzeManySide(litePalSupport, associationsInfo);
        } else {
            analyzeOneSide(litePalSupport, associationsInfo);
        }
    }
}
