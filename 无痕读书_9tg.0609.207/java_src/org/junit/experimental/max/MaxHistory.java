package org.junit.experimental.max;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;
/* loaded from: classes6.dex */
public class MaxHistory implements Serializable {
    private static final long serialVersionUID = 1;
    private final Map<String, Long> fDurations = new HashMap();
    private final Map<String, Long> fFailureTimestamps = new HashMap();
    private final File fHistoryStore;

    public static MaxHistory forFolder(File file) {
        if (file.exists()) {
            try {
                return readHistory(file);
            } catch (CouldNotReadCoreException e) {
                e.printStackTrace();
                file.delete();
            }
        }
        return new MaxHistory(file);
    }

    private static MaxHistory readHistory(File storedResults) throws CouldNotReadCoreException {
        try {
            FileInputStream file = new FileInputStream(storedResults);
            ObjectInputStream stream = new ObjectInputStream(file);
            MaxHistory maxHistory = (MaxHistory) stream.readObject();
            stream.close();
            file.close();
            return maxHistory;
        } catch (Exception e) {
            throw new CouldNotReadCoreException(e);
        }
    }

    private MaxHistory(File storedResults) {
        this.fHistoryStore = storedResults;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() throws IOException {
        ObjectOutputStream stream = new ObjectOutputStream(new FileOutputStream(this.fHistoryStore));
        stream.writeObject(this);
        stream.close();
    }

    Long getFailureTimestamp(Description key) {
        return this.fFailureTimestamps.get(key.toString());
    }

    void putTestFailureTimestamp(Description key, long end) {
        this.fFailureTimestamps.put(key.toString(), Long.valueOf(end));
    }

    boolean isNewTest(Description key) {
        return !this.fDurations.containsKey(key.toString());
    }

    Long getTestDuration(Description key) {
        return this.fDurations.get(key.toString());
    }

    void putTestDuration(Description description, long duration) {
        this.fDurations.put(description.toString(), Long.valueOf(duration));
    }

    /* loaded from: classes6.dex */
    private final class RememberingListener extends RunListener {
        private long overallStart;
        private Map<Description, Long> starts;

        private RememberingListener() {
            this.overallStart = System.currentTimeMillis();
            this.starts = new HashMap();
        }

        @Override // org.junit.runner.notification.RunListener
        public void testStarted(Description description) throws Exception {
            this.starts.put(description, Long.valueOf(System.nanoTime()));
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFinished(Description description) throws Exception {
            long end = System.nanoTime();
            long start = this.starts.get(description).longValue();
            MaxHistory.this.putTestDuration(description, end - start);
        }

        @Override // org.junit.runner.notification.RunListener
        public void testFailure(Failure failure) throws Exception {
            MaxHistory.this.putTestFailureTimestamp(failure.getDescription(), this.overallStart);
        }

        @Override // org.junit.runner.notification.RunListener
        public void testRunFinished(Result result) throws Exception {
            MaxHistory.this.save();
        }
    }

    /* loaded from: classes6.dex */
    private class TestComparator implements Comparator<Description> {
        private TestComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Description o1, Description o2) {
            if (MaxHistory.this.isNewTest(o1)) {
                return -1;
            }
            if (MaxHistory.this.isNewTest(o2)) {
                return 1;
            }
            int result = getFailure(o2).compareTo(getFailure(o1));
            return result == 0 ? MaxHistory.this.getTestDuration(o1).compareTo(MaxHistory.this.getTestDuration(o2)) : result;
        }

        private Long getFailure(Description key) {
            Long result = MaxHistory.this.getFailureTimestamp(key);
            if (result == null) {
                return 0L;
            }
            return result;
        }
    }

    public RunListener listener() {
        return new RememberingListener();
    }

    public Comparator<Description> testComparator() {
        return new TestComparator();
    }
}
